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
extern "C" void matrix_mult_partition_both_dims(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_matrix_mult_partition_both_dims_hw(volatile void * __xlx_apatb_param_A_0_0, volatile void * __xlx_apatb_param_A_0_1, volatile void * __xlx_apatb_param_A_0_2, volatile void * __xlx_apatb_param_A_0_3, volatile void * __xlx_apatb_param_A_0_4, volatile void * __xlx_apatb_param_A_0_5, volatile void * __xlx_apatb_param_A_1_0, volatile void * __xlx_apatb_param_A_1_1, volatile void * __xlx_apatb_param_A_1_2, volatile void * __xlx_apatb_param_A_1_3, volatile void * __xlx_apatb_param_A_1_4, volatile void * __xlx_apatb_param_A_1_5, volatile void * __xlx_apatb_param_A_2_0, volatile void * __xlx_apatb_param_A_2_1, volatile void * __xlx_apatb_param_A_2_2, volatile void * __xlx_apatb_param_A_2_3, volatile void * __xlx_apatb_param_A_2_4, volatile void * __xlx_apatb_param_A_2_5, volatile void * __xlx_apatb_param_A_3_0, volatile void * __xlx_apatb_param_A_3_1, volatile void * __xlx_apatb_param_A_3_2, volatile void * __xlx_apatb_param_A_3_3, volatile void * __xlx_apatb_param_A_3_4, volatile void * __xlx_apatb_param_A_3_5, volatile void * __xlx_apatb_param_A_4_0, volatile void * __xlx_apatb_param_A_4_1, volatile void * __xlx_apatb_param_A_4_2, volatile void * __xlx_apatb_param_A_4_3, volatile void * __xlx_apatb_param_A_4_4, volatile void * __xlx_apatb_param_A_4_5, volatile void * __xlx_apatb_param_A_5_0, volatile void * __xlx_apatb_param_A_5_1, volatile void * __xlx_apatb_param_A_5_2, volatile void * __xlx_apatb_param_A_5_3, volatile void * __xlx_apatb_param_A_5_4, volatile void * __xlx_apatb_param_A_5_5, volatile void * __xlx_apatb_param_B_0_0, volatile void * __xlx_apatb_param_B_0_1, volatile void * __xlx_apatb_param_B_0_2, volatile void * __xlx_apatb_param_B_0_3, volatile void * __xlx_apatb_param_B_0_4, volatile void * __xlx_apatb_param_B_0_5, volatile void * __xlx_apatb_param_B_1_0, volatile void * __xlx_apatb_param_B_1_1, volatile void * __xlx_apatb_param_B_1_2, volatile void * __xlx_apatb_param_B_1_3, volatile void * __xlx_apatb_param_B_1_4, volatile void * __xlx_apatb_param_B_1_5, volatile void * __xlx_apatb_param_B_2_0, volatile void * __xlx_apatb_param_B_2_1, volatile void * __xlx_apatb_param_B_2_2, volatile void * __xlx_apatb_param_B_2_3, volatile void * __xlx_apatb_param_B_2_4, volatile void * __xlx_apatb_param_B_2_5, volatile void * __xlx_apatb_param_B_3_0, volatile void * __xlx_apatb_param_B_3_1, volatile void * __xlx_apatb_param_B_3_2, volatile void * __xlx_apatb_param_B_3_3, volatile void * __xlx_apatb_param_B_3_4, volatile void * __xlx_apatb_param_B_3_5, volatile void * __xlx_apatb_param_B_4_0, volatile void * __xlx_apatb_param_B_4_1, volatile void * __xlx_apatb_param_B_4_2, volatile void * __xlx_apatb_param_B_4_3, volatile void * __xlx_apatb_param_B_4_4, volatile void * __xlx_apatb_param_B_4_5, volatile void * __xlx_apatb_param_B_5_0, volatile void * __xlx_apatb_param_B_5_1, volatile void * __xlx_apatb_param_B_5_2, volatile void * __xlx_apatb_param_B_5_3, volatile void * __xlx_apatb_param_B_5_4, volatile void * __xlx_apatb_param_B_5_5, volatile void * __xlx_apatb_param_C_0_0, volatile void * __xlx_apatb_param_C_0_1, volatile void * __xlx_apatb_param_C_0_2, volatile void * __xlx_apatb_param_C_0_3, volatile void * __xlx_apatb_param_C_0_4, volatile void * __xlx_apatb_param_C_0_5, volatile void * __xlx_apatb_param_C_1_0, volatile void * __xlx_apatb_param_C_1_1, volatile void * __xlx_apatb_param_C_1_2, volatile void * __xlx_apatb_param_C_1_3, volatile void * __xlx_apatb_param_C_1_4, volatile void * __xlx_apatb_param_C_1_5, volatile void * __xlx_apatb_param_C_2_0, volatile void * __xlx_apatb_param_C_2_1, volatile void * __xlx_apatb_param_C_2_2, volatile void * __xlx_apatb_param_C_2_3, volatile void * __xlx_apatb_param_C_2_4, volatile void * __xlx_apatb_param_C_2_5, volatile void * __xlx_apatb_param_C_3_0, volatile void * __xlx_apatb_param_C_3_1, volatile void * __xlx_apatb_param_C_3_2, volatile void * __xlx_apatb_param_C_3_3, volatile void * __xlx_apatb_param_C_3_4, volatile void * __xlx_apatb_param_C_3_5, volatile void * __xlx_apatb_param_C_4_0, volatile void * __xlx_apatb_param_C_4_1, volatile void * __xlx_apatb_param_C_4_2, volatile void * __xlx_apatb_param_C_4_3, volatile void * __xlx_apatb_param_C_4_4, volatile void * __xlx_apatb_param_C_4_5, volatile void * __xlx_apatb_param_C_5_0, volatile void * __xlx_apatb_param_C_5_1, volatile void * __xlx_apatb_param_C_5_2, volatile void * __xlx_apatb_param_C_5_3, volatile void * __xlx_apatb_param_C_5_4, volatile void * __xlx_apatb_param_C_5_5) {
using hls::sim::createStream;
  // DUT call
  matrix_mult_partition_both_dims(__xlx_apatb_param_A_0_0, __xlx_apatb_param_A_0_1, __xlx_apatb_param_A_0_2, __xlx_apatb_param_A_0_3, __xlx_apatb_param_A_0_4, __xlx_apatb_param_A_0_5, __xlx_apatb_param_A_1_0, __xlx_apatb_param_A_1_1, __xlx_apatb_param_A_1_2, __xlx_apatb_param_A_1_3, __xlx_apatb_param_A_1_4, __xlx_apatb_param_A_1_5, __xlx_apatb_param_A_2_0, __xlx_apatb_param_A_2_1, __xlx_apatb_param_A_2_2, __xlx_apatb_param_A_2_3, __xlx_apatb_param_A_2_4, __xlx_apatb_param_A_2_5, __xlx_apatb_param_A_3_0, __xlx_apatb_param_A_3_1, __xlx_apatb_param_A_3_2, __xlx_apatb_param_A_3_3, __xlx_apatb_param_A_3_4, __xlx_apatb_param_A_3_5, __xlx_apatb_param_A_4_0, __xlx_apatb_param_A_4_1, __xlx_apatb_param_A_4_2, __xlx_apatb_param_A_4_3, __xlx_apatb_param_A_4_4, __xlx_apatb_param_A_4_5, __xlx_apatb_param_A_5_0, __xlx_apatb_param_A_5_1, __xlx_apatb_param_A_5_2, __xlx_apatb_param_A_5_3, __xlx_apatb_param_A_5_4, __xlx_apatb_param_A_5_5, __xlx_apatb_param_B_0_0, __xlx_apatb_param_B_0_1, __xlx_apatb_param_B_0_2, __xlx_apatb_param_B_0_3, __xlx_apatb_param_B_0_4, __xlx_apatb_param_B_0_5, __xlx_apatb_param_B_1_0, __xlx_apatb_param_B_1_1, __xlx_apatb_param_B_1_2, __xlx_apatb_param_B_1_3, __xlx_apatb_param_B_1_4, __xlx_apatb_param_B_1_5, __xlx_apatb_param_B_2_0, __xlx_apatb_param_B_2_1, __xlx_apatb_param_B_2_2, __xlx_apatb_param_B_2_3, __xlx_apatb_param_B_2_4, __xlx_apatb_param_B_2_5, __xlx_apatb_param_B_3_0, __xlx_apatb_param_B_3_1, __xlx_apatb_param_B_3_2, __xlx_apatb_param_B_3_3, __xlx_apatb_param_B_3_4, __xlx_apatb_param_B_3_5, __xlx_apatb_param_B_4_0, __xlx_apatb_param_B_4_1, __xlx_apatb_param_B_4_2, __xlx_apatb_param_B_4_3, __xlx_apatb_param_B_4_4, __xlx_apatb_param_B_4_5, __xlx_apatb_param_B_5_0, __xlx_apatb_param_B_5_1, __xlx_apatb_param_B_5_2, __xlx_apatb_param_B_5_3, __xlx_apatb_param_B_5_4, __xlx_apatb_param_B_5_5, __xlx_apatb_param_C_0_0, __xlx_apatb_param_C_0_1, __xlx_apatb_param_C_0_2, __xlx_apatb_param_C_0_3, __xlx_apatb_param_C_0_4, __xlx_apatb_param_C_0_5, __xlx_apatb_param_C_1_0, __xlx_apatb_param_C_1_1, __xlx_apatb_param_C_1_2, __xlx_apatb_param_C_1_3, __xlx_apatb_param_C_1_4, __xlx_apatb_param_C_1_5, __xlx_apatb_param_C_2_0, __xlx_apatb_param_C_2_1, __xlx_apatb_param_C_2_2, __xlx_apatb_param_C_2_3, __xlx_apatb_param_C_2_4, __xlx_apatb_param_C_2_5, __xlx_apatb_param_C_3_0, __xlx_apatb_param_C_3_1, __xlx_apatb_param_C_3_2, __xlx_apatb_param_C_3_3, __xlx_apatb_param_C_3_4, __xlx_apatb_param_C_3_5, __xlx_apatb_param_C_4_0, __xlx_apatb_param_C_4_1, __xlx_apatb_param_C_4_2, __xlx_apatb_param_C_4_3, __xlx_apatb_param_C_4_4, __xlx_apatb_param_C_4_5, __xlx_apatb_param_C_5_0, __xlx_apatb_param_C_5_1, __xlx_apatb_param_C_5_2, __xlx_apatb_param_C_5_3, __xlx_apatb_param_C_5_4, __xlx_apatb_param_C_5_5);
}
