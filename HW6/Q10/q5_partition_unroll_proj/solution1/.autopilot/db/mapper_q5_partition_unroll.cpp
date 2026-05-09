#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void q5_partition_unroll(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_q5_partition_unroll_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_A_16, volatile void * __xlx_apatb_param_A_17, volatile void * __xlx_apatb_param_A_18, volatile void * __xlx_apatb_param_A_19, volatile void * __xlx_apatb_param_A_20, volatile void * __xlx_apatb_param_A_21, volatile void * __xlx_apatb_param_A_22, volatile void * __xlx_apatb_param_A_23, volatile void * __xlx_apatb_param_A_24, volatile void * __xlx_apatb_param_A_25, volatile void * __xlx_apatb_param_A_26, volatile void * __xlx_apatb_param_A_27, volatile void * __xlx_apatb_param_A_28, volatile void * __xlx_apatb_param_A_29, volatile void * __xlx_apatb_param_A_30, volatile void * __xlx_apatb_param_A_31, volatile void * __xlx_apatb_param_A_32, volatile void * __xlx_apatb_param_A_33, volatile void * __xlx_apatb_param_A_34, volatile void * __xlx_apatb_param_A_35, volatile void * __xlx_apatb_param_A_36, volatile void * __xlx_apatb_param_A_37, volatile void * __xlx_apatb_param_A_38, volatile void * __xlx_apatb_param_A_39, volatile void * __xlx_apatb_param_A_40, volatile void * __xlx_apatb_param_A_41, volatile void * __xlx_apatb_param_A_42, volatile void * __xlx_apatb_param_A_43, volatile void * __xlx_apatb_param_A_44, volatile void * __xlx_apatb_param_A_45, volatile void * __xlx_apatb_param_A_46, volatile void * __xlx_apatb_param_A_47, volatile void * __xlx_apatb_param_A_48, volatile void * __xlx_apatb_param_A_49, volatile void * __xlx_apatb_param_A_50, volatile void * __xlx_apatb_param_A_51, volatile void * __xlx_apatb_param_A_52, volatile void * __xlx_apatb_param_A_53, volatile void * __xlx_apatb_param_A_54, volatile void * __xlx_apatb_param_A_55, volatile void * __xlx_apatb_param_A_56, volatile void * __xlx_apatb_param_A_57, volatile void * __xlx_apatb_param_A_58, volatile void * __xlx_apatb_param_A_59, volatile void * __xlx_apatb_param_A_60, volatile void * __xlx_apatb_param_A_61, volatile void * __xlx_apatb_param_A_62, volatile void * __xlx_apatb_param_A_63, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_B_16, volatile void * __xlx_apatb_param_B_17, volatile void * __xlx_apatb_param_B_18, volatile void * __xlx_apatb_param_B_19, volatile void * __xlx_apatb_param_B_20, volatile void * __xlx_apatb_param_B_21, volatile void * __xlx_apatb_param_B_22, volatile void * __xlx_apatb_param_B_23, volatile void * __xlx_apatb_param_B_24, volatile void * __xlx_apatb_param_B_25, volatile void * __xlx_apatb_param_B_26, volatile void * __xlx_apatb_param_B_27, volatile void * __xlx_apatb_param_B_28, volatile void * __xlx_apatb_param_B_29, volatile void * __xlx_apatb_param_B_30, volatile void * __xlx_apatb_param_B_31, volatile void * __xlx_apatb_param_B_32, volatile void * __xlx_apatb_param_B_33, volatile void * __xlx_apatb_param_B_34, volatile void * __xlx_apatb_param_B_35, volatile void * __xlx_apatb_param_B_36, volatile void * __xlx_apatb_param_B_37, volatile void * __xlx_apatb_param_B_38, volatile void * __xlx_apatb_param_B_39, volatile void * __xlx_apatb_param_B_40, volatile void * __xlx_apatb_param_B_41, volatile void * __xlx_apatb_param_B_42, volatile void * __xlx_apatb_param_B_43, volatile void * __xlx_apatb_param_B_44, volatile void * __xlx_apatb_param_B_45, volatile void * __xlx_apatb_param_B_46, volatile void * __xlx_apatb_param_B_47, volatile void * __xlx_apatb_param_B_48, volatile void * __xlx_apatb_param_B_49, volatile void * __xlx_apatb_param_B_50, volatile void * __xlx_apatb_param_B_51, volatile void * __xlx_apatb_param_B_52, volatile void * __xlx_apatb_param_B_53, volatile void * __xlx_apatb_param_B_54, volatile void * __xlx_apatb_param_B_55, volatile void * __xlx_apatb_param_B_56, volatile void * __xlx_apatb_param_B_57, volatile void * __xlx_apatb_param_B_58, volatile void * __xlx_apatb_param_B_59, volatile void * __xlx_apatb_param_B_60, volatile void * __xlx_apatb_param_B_61, volatile void * __xlx_apatb_param_B_62, volatile void * __xlx_apatb_param_B_63, volatile void * __xlx_apatb_param_C_0, volatile void * __xlx_apatb_param_C_1, volatile void * __xlx_apatb_param_C_2, volatile void * __xlx_apatb_param_C_3, volatile void * __xlx_apatb_param_C_4, volatile void * __xlx_apatb_param_C_5, volatile void * __xlx_apatb_param_C_6, volatile void * __xlx_apatb_param_C_7, volatile void * __xlx_apatb_param_C_8, volatile void * __xlx_apatb_param_C_9, volatile void * __xlx_apatb_param_C_10, volatile void * __xlx_apatb_param_C_11, volatile void * __xlx_apatb_param_C_12, volatile void * __xlx_apatb_param_C_13, volatile void * __xlx_apatb_param_C_14, volatile void * __xlx_apatb_param_C_15, volatile void * __xlx_apatb_param_C_16, volatile void * __xlx_apatb_param_C_17, volatile void * __xlx_apatb_param_C_18, volatile void * __xlx_apatb_param_C_19, volatile void * __xlx_apatb_param_C_20, volatile void * __xlx_apatb_param_C_21, volatile void * __xlx_apatb_param_C_22, volatile void * __xlx_apatb_param_C_23, volatile void * __xlx_apatb_param_C_24, volatile void * __xlx_apatb_param_C_25, volatile void * __xlx_apatb_param_C_26, volatile void * __xlx_apatb_param_C_27, volatile void * __xlx_apatb_param_C_28, volatile void * __xlx_apatb_param_C_29, volatile void * __xlx_apatb_param_C_30, volatile void * __xlx_apatb_param_C_31, volatile void * __xlx_apatb_param_C_32, volatile void * __xlx_apatb_param_C_33, volatile void * __xlx_apatb_param_C_34, volatile void * __xlx_apatb_param_C_35, volatile void * __xlx_apatb_param_C_36, volatile void * __xlx_apatb_param_C_37, volatile void * __xlx_apatb_param_C_38, volatile void * __xlx_apatb_param_C_39, volatile void * __xlx_apatb_param_C_40, volatile void * __xlx_apatb_param_C_41, volatile void * __xlx_apatb_param_C_42, volatile void * __xlx_apatb_param_C_43, volatile void * __xlx_apatb_param_C_44, volatile void * __xlx_apatb_param_C_45, volatile void * __xlx_apatb_param_C_46, volatile void * __xlx_apatb_param_C_47, volatile void * __xlx_apatb_param_C_48, volatile void * __xlx_apatb_param_C_49, volatile void * __xlx_apatb_param_C_50, volatile void * __xlx_apatb_param_C_51, volatile void * __xlx_apatb_param_C_52, volatile void * __xlx_apatb_param_C_53, volatile void * __xlx_apatb_param_C_54, volatile void * __xlx_apatb_param_C_55, volatile void * __xlx_apatb_param_C_56, volatile void * __xlx_apatb_param_C_57, volatile void * __xlx_apatb_param_C_58, volatile void * __xlx_apatb_param_C_59, volatile void * __xlx_apatb_param_C_60, volatile void * __xlx_apatb_param_C_61, volatile void * __xlx_apatb_param_C_62, volatile void * __xlx_apatb_param_C_63, volatile void * __xlx_apatb_param_D_0, volatile void * __xlx_apatb_param_D_1, volatile void * __xlx_apatb_param_D_2, volatile void * __xlx_apatb_param_D_3, volatile void * __xlx_apatb_param_D_4, volatile void * __xlx_apatb_param_D_5, volatile void * __xlx_apatb_param_D_6, volatile void * __xlx_apatb_param_D_7, volatile void * __xlx_apatb_param_D_8, volatile void * __xlx_apatb_param_D_9, volatile void * __xlx_apatb_param_D_10, volatile void * __xlx_apatb_param_D_11, volatile void * __xlx_apatb_param_D_12, volatile void * __xlx_apatb_param_D_13, volatile void * __xlx_apatb_param_D_14, volatile void * __xlx_apatb_param_D_15, volatile void * __xlx_apatb_param_D_16, volatile void * __xlx_apatb_param_D_17, volatile void * __xlx_apatb_param_D_18, volatile void * __xlx_apatb_param_D_19, volatile void * __xlx_apatb_param_D_20, volatile void * __xlx_apatb_param_D_21, volatile void * __xlx_apatb_param_D_22, volatile void * __xlx_apatb_param_D_23, volatile void * __xlx_apatb_param_D_24, volatile void * __xlx_apatb_param_D_25, volatile void * __xlx_apatb_param_D_26, volatile void * __xlx_apatb_param_D_27, volatile void * __xlx_apatb_param_D_28, volatile void * __xlx_apatb_param_D_29, volatile void * __xlx_apatb_param_D_30, volatile void * __xlx_apatb_param_D_31, volatile void * __xlx_apatb_param_D_32, volatile void * __xlx_apatb_param_D_33, volatile void * __xlx_apatb_param_D_34, volatile void * __xlx_apatb_param_D_35, volatile void * __xlx_apatb_param_D_36, volatile void * __xlx_apatb_param_D_37, volatile void * __xlx_apatb_param_D_38, volatile void * __xlx_apatb_param_D_39, volatile void * __xlx_apatb_param_D_40, volatile void * __xlx_apatb_param_D_41, volatile void * __xlx_apatb_param_D_42, volatile void * __xlx_apatb_param_D_43, volatile void * __xlx_apatb_param_D_44, volatile void * __xlx_apatb_param_D_45, volatile void * __xlx_apatb_param_D_46, volatile void * __xlx_apatb_param_D_47, volatile void * __xlx_apatb_param_D_48, volatile void * __xlx_apatb_param_D_49, volatile void * __xlx_apatb_param_D_50, volatile void * __xlx_apatb_param_D_51, volatile void * __xlx_apatb_param_D_52, volatile void * __xlx_apatb_param_D_53, volatile void * __xlx_apatb_param_D_54, volatile void * __xlx_apatb_param_D_55, volatile void * __xlx_apatb_param_D_56, volatile void * __xlx_apatb_param_D_57, volatile void * __xlx_apatb_param_D_58, volatile void * __xlx_apatb_param_D_59, volatile void * __xlx_apatb_param_D_60, volatile void * __xlx_apatb_param_D_61, volatile void * __xlx_apatb_param_D_62, volatile void * __xlx_apatb_param_D_63, volatile void * __xlx_apatb_param_E_0, volatile void * __xlx_apatb_param_E_1, volatile void * __xlx_apatb_param_E_2, volatile void * __xlx_apatb_param_E_3, volatile void * __xlx_apatb_param_E_4, volatile void * __xlx_apatb_param_E_5, volatile void * __xlx_apatb_param_E_6, volatile void * __xlx_apatb_param_E_7, volatile void * __xlx_apatb_param_E_8, volatile void * __xlx_apatb_param_E_9, volatile void * __xlx_apatb_param_E_10, volatile void * __xlx_apatb_param_E_11, volatile void * __xlx_apatb_param_E_12, volatile void * __xlx_apatb_param_E_13, volatile void * __xlx_apatb_param_E_14, volatile void * __xlx_apatb_param_E_15, volatile void * __xlx_apatb_param_E_16, volatile void * __xlx_apatb_param_E_17, volatile void * __xlx_apatb_param_E_18, volatile void * __xlx_apatb_param_E_19, volatile void * __xlx_apatb_param_E_20, volatile void * __xlx_apatb_param_E_21, volatile void * __xlx_apatb_param_E_22, volatile void * __xlx_apatb_param_E_23, volatile void * __xlx_apatb_param_E_24, volatile void * __xlx_apatb_param_E_25, volatile void * __xlx_apatb_param_E_26, volatile void * __xlx_apatb_param_E_27, volatile void * __xlx_apatb_param_E_28, volatile void * __xlx_apatb_param_E_29, volatile void * __xlx_apatb_param_E_30, volatile void * __xlx_apatb_param_E_31, volatile void * __xlx_apatb_param_E_32, volatile void * __xlx_apatb_param_E_33, volatile void * __xlx_apatb_param_E_34, volatile void * __xlx_apatb_param_E_35, volatile void * __xlx_apatb_param_E_36, volatile void * __xlx_apatb_param_E_37, volatile void * __xlx_apatb_param_E_38, volatile void * __xlx_apatb_param_E_39, volatile void * __xlx_apatb_param_E_40, volatile void * __xlx_apatb_param_E_41, volatile void * __xlx_apatb_param_E_42, volatile void * __xlx_apatb_param_E_43, volatile void * __xlx_apatb_param_E_44, volatile void * __xlx_apatb_param_E_45, volatile void * __xlx_apatb_param_E_46, volatile void * __xlx_apatb_param_E_47, volatile void * __xlx_apatb_param_E_48, volatile void * __xlx_apatb_param_E_49, volatile void * __xlx_apatb_param_E_50, volatile void * __xlx_apatb_param_E_51, volatile void * __xlx_apatb_param_E_52, volatile void * __xlx_apatb_param_E_53, volatile void * __xlx_apatb_param_E_54, volatile void * __xlx_apatb_param_E_55, volatile void * __xlx_apatb_param_E_56, volatile void * __xlx_apatb_param_E_57, volatile void * __xlx_apatb_param_E_58, volatile void * __xlx_apatb_param_E_59, volatile void * __xlx_apatb_param_E_60, volatile void * __xlx_apatb_param_E_61, volatile void * __xlx_apatb_param_E_62, volatile void * __xlx_apatb_param_E_63) {
using hls::sim::createStream;
  // DUT call
  q5_partition_unroll(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_A_16, __xlx_apatb_param_A_17, __xlx_apatb_param_A_18, __xlx_apatb_param_A_19, __xlx_apatb_param_A_20, __xlx_apatb_param_A_21, __xlx_apatb_param_A_22, __xlx_apatb_param_A_23, __xlx_apatb_param_A_24, __xlx_apatb_param_A_25, __xlx_apatb_param_A_26, __xlx_apatb_param_A_27, __xlx_apatb_param_A_28, __xlx_apatb_param_A_29, __xlx_apatb_param_A_30, __xlx_apatb_param_A_31, __xlx_apatb_param_A_32, __xlx_apatb_param_A_33, __xlx_apatb_param_A_34, __xlx_apatb_param_A_35, __xlx_apatb_param_A_36, __xlx_apatb_param_A_37, __xlx_apatb_param_A_38, __xlx_apatb_param_A_39, __xlx_apatb_param_A_40, __xlx_apatb_param_A_41, __xlx_apatb_param_A_42, __xlx_apatb_param_A_43, __xlx_apatb_param_A_44, __xlx_apatb_param_A_45, __xlx_apatb_param_A_46, __xlx_apatb_param_A_47, __xlx_apatb_param_A_48, __xlx_apatb_param_A_49, __xlx_apatb_param_A_50, __xlx_apatb_param_A_51, __xlx_apatb_param_A_52, __xlx_apatb_param_A_53, __xlx_apatb_param_A_54, __xlx_apatb_param_A_55, __xlx_apatb_param_A_56, __xlx_apatb_param_A_57, __xlx_apatb_param_A_58, __xlx_apatb_param_A_59, __xlx_apatb_param_A_60, __xlx_apatb_param_A_61, __xlx_apatb_param_A_62, __xlx_apatb_param_A_63, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_B_8, __xlx_apatb_param_B_9, __xlx_apatb_param_B_10, __xlx_apatb_param_B_11, __xlx_apatb_param_B_12, __xlx_apatb_param_B_13, __xlx_apatb_param_B_14, __xlx_apatb_param_B_15, __xlx_apatb_param_B_16, __xlx_apatb_param_B_17, __xlx_apatb_param_B_18, __xlx_apatb_param_B_19, __xlx_apatb_param_B_20, __xlx_apatb_param_B_21, __xlx_apatb_param_B_22, __xlx_apatb_param_B_23, __xlx_apatb_param_B_24, __xlx_apatb_param_B_25, __xlx_apatb_param_B_26, __xlx_apatb_param_B_27, __xlx_apatb_param_B_28, __xlx_apatb_param_B_29, __xlx_apatb_param_B_30, __xlx_apatb_param_B_31, __xlx_apatb_param_B_32, __xlx_apatb_param_B_33, __xlx_apatb_param_B_34, __xlx_apatb_param_B_35, __xlx_apatb_param_B_36, __xlx_apatb_param_B_37, __xlx_apatb_param_B_38, __xlx_apatb_param_B_39, __xlx_apatb_param_B_40, __xlx_apatb_param_B_41, __xlx_apatb_param_B_42, __xlx_apatb_param_B_43, __xlx_apatb_param_B_44, __xlx_apatb_param_B_45, __xlx_apatb_param_B_46, __xlx_apatb_param_B_47, __xlx_apatb_param_B_48, __xlx_apatb_param_B_49, __xlx_apatb_param_B_50, __xlx_apatb_param_B_51, __xlx_apatb_param_B_52, __xlx_apatb_param_B_53, __xlx_apatb_param_B_54, __xlx_apatb_param_B_55, __xlx_apatb_param_B_56, __xlx_apatb_param_B_57, __xlx_apatb_param_B_58, __xlx_apatb_param_B_59, __xlx_apatb_param_B_60, __xlx_apatb_param_B_61, __xlx_apatb_param_B_62, __xlx_apatb_param_B_63, __xlx_apatb_param_C_0, __xlx_apatb_param_C_1, __xlx_apatb_param_C_2, __xlx_apatb_param_C_3, __xlx_apatb_param_C_4, __xlx_apatb_param_C_5, __xlx_apatb_param_C_6, __xlx_apatb_param_C_7, __xlx_apatb_param_C_8, __xlx_apatb_param_C_9, __xlx_apatb_param_C_10, __xlx_apatb_param_C_11, __xlx_apatb_param_C_12, __xlx_apatb_param_C_13, __xlx_apatb_param_C_14, __xlx_apatb_param_C_15, __xlx_apatb_param_C_16, __xlx_apatb_param_C_17, __xlx_apatb_param_C_18, __xlx_apatb_param_C_19, __xlx_apatb_param_C_20, __xlx_apatb_param_C_21, __xlx_apatb_param_C_22, __xlx_apatb_param_C_23, __xlx_apatb_param_C_24, __xlx_apatb_param_C_25, __xlx_apatb_param_C_26, __xlx_apatb_param_C_27, __xlx_apatb_param_C_28, __xlx_apatb_param_C_29, __xlx_apatb_param_C_30, __xlx_apatb_param_C_31, __xlx_apatb_param_C_32, __xlx_apatb_param_C_33, __xlx_apatb_param_C_34, __xlx_apatb_param_C_35, __xlx_apatb_param_C_36, __xlx_apatb_param_C_37, __xlx_apatb_param_C_38, __xlx_apatb_param_C_39, __xlx_apatb_param_C_40, __xlx_apatb_param_C_41, __xlx_apatb_param_C_42, __xlx_apatb_param_C_43, __xlx_apatb_param_C_44, __xlx_apatb_param_C_45, __xlx_apatb_param_C_46, __xlx_apatb_param_C_47, __xlx_apatb_param_C_48, __xlx_apatb_param_C_49, __xlx_apatb_param_C_50, __xlx_apatb_param_C_51, __xlx_apatb_param_C_52, __xlx_apatb_param_C_53, __xlx_apatb_param_C_54, __xlx_apatb_param_C_55, __xlx_apatb_param_C_56, __xlx_apatb_param_C_57, __xlx_apatb_param_C_58, __xlx_apatb_param_C_59, __xlx_apatb_param_C_60, __xlx_apatb_param_C_61, __xlx_apatb_param_C_62, __xlx_apatb_param_C_63, __xlx_apatb_param_D_0, __xlx_apatb_param_D_1, __xlx_apatb_param_D_2, __xlx_apatb_param_D_3, __xlx_apatb_param_D_4, __xlx_apatb_param_D_5, __xlx_apatb_param_D_6, __xlx_apatb_param_D_7, __xlx_apatb_param_D_8, __xlx_apatb_param_D_9, __xlx_apatb_param_D_10, __xlx_apatb_param_D_11, __xlx_apatb_param_D_12, __xlx_apatb_param_D_13, __xlx_apatb_param_D_14, __xlx_apatb_param_D_15, __xlx_apatb_param_D_16, __xlx_apatb_param_D_17, __xlx_apatb_param_D_18, __xlx_apatb_param_D_19, __xlx_apatb_param_D_20, __xlx_apatb_param_D_21, __xlx_apatb_param_D_22, __xlx_apatb_param_D_23, __xlx_apatb_param_D_24, __xlx_apatb_param_D_25, __xlx_apatb_param_D_26, __xlx_apatb_param_D_27, __xlx_apatb_param_D_28, __xlx_apatb_param_D_29, __xlx_apatb_param_D_30, __xlx_apatb_param_D_31, __xlx_apatb_param_D_32, __xlx_apatb_param_D_33, __xlx_apatb_param_D_34, __xlx_apatb_param_D_35, __xlx_apatb_param_D_36, __xlx_apatb_param_D_37, __xlx_apatb_param_D_38, __xlx_apatb_param_D_39, __xlx_apatb_param_D_40, __xlx_apatb_param_D_41, __xlx_apatb_param_D_42, __xlx_apatb_param_D_43, __xlx_apatb_param_D_44, __xlx_apatb_param_D_45, __xlx_apatb_param_D_46, __xlx_apatb_param_D_47, __xlx_apatb_param_D_48, __xlx_apatb_param_D_49, __xlx_apatb_param_D_50, __xlx_apatb_param_D_51, __xlx_apatb_param_D_52, __xlx_apatb_param_D_53, __xlx_apatb_param_D_54, __xlx_apatb_param_D_55, __xlx_apatb_param_D_56, __xlx_apatb_param_D_57, __xlx_apatb_param_D_58, __xlx_apatb_param_D_59, __xlx_apatb_param_D_60, __xlx_apatb_param_D_61, __xlx_apatb_param_D_62, __xlx_apatb_param_D_63, __xlx_apatb_param_E_0, __xlx_apatb_param_E_1, __xlx_apatb_param_E_2, __xlx_apatb_param_E_3, __xlx_apatb_param_E_4, __xlx_apatb_param_E_5, __xlx_apatb_param_E_6, __xlx_apatb_param_E_7, __xlx_apatb_param_E_8, __xlx_apatb_param_E_9, __xlx_apatb_param_E_10, __xlx_apatb_param_E_11, __xlx_apatb_param_E_12, __xlx_apatb_param_E_13, __xlx_apatb_param_E_14, __xlx_apatb_param_E_15, __xlx_apatb_param_E_16, __xlx_apatb_param_E_17, __xlx_apatb_param_E_18, __xlx_apatb_param_E_19, __xlx_apatb_param_E_20, __xlx_apatb_param_E_21, __xlx_apatb_param_E_22, __xlx_apatb_param_E_23, __xlx_apatb_param_E_24, __xlx_apatb_param_E_25, __xlx_apatb_param_E_26, __xlx_apatb_param_E_27, __xlx_apatb_param_E_28, __xlx_apatb_param_E_29, __xlx_apatb_param_E_30, __xlx_apatb_param_E_31, __xlx_apatb_param_E_32, __xlx_apatb_param_E_33, __xlx_apatb_param_E_34, __xlx_apatb_param_E_35, __xlx_apatb_param_E_36, __xlx_apatb_param_E_37, __xlx_apatb_param_E_38, __xlx_apatb_param_E_39, __xlx_apatb_param_E_40, __xlx_apatb_param_E_41, __xlx_apatb_param_E_42, __xlx_apatb_param_E_43, __xlx_apatb_param_E_44, __xlx_apatb_param_E_45, __xlx_apatb_param_E_46, __xlx_apatb_param_E_47, __xlx_apatb_param_E_48, __xlx_apatb_param_E_49, __xlx_apatb_param_E_50, __xlx_apatb_param_E_51, __xlx_apatb_param_E_52, __xlx_apatb_param_E_53, __xlx_apatb_param_E_54, __xlx_apatb_param_E_55, __xlx_apatb_param_E_56, __xlx_apatb_param_E_57, __xlx_apatb_param_E_58, __xlx_apatb_param_E_59, __xlx_apatb_param_E_60, __xlx_apatb_param_E_61, __xlx_apatb_param_E_62, __xlx_apatb_param_E_63);
}
