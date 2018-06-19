#include <iostream>
#include <string>
using namespace std;

const int n_toko=100, maks=100, minimal=0;
int main() {
  string nm_toko[maks], tk_murah, tk_kualitas, tk_manis, overall;
  int harga[maks], kualitas[maks], manis[maks];
  int n, temp, i;

  cin>>n;
  if (n < n_toko || n > 0) {
    for(i=0; i<n; i++) {
      cin>>nm_toko[i]>>harga[i]>>kualitas[i]>>manis[i];
    }

    // CARI YANG PALING MURAH
    temp = maks;
    i = 0;
    while (i < n) {
      if (harga[i] < temp) {
        temp = harga[i];
        tk_murah = nm_toko[i];
      }
      i++;
    }

    // CARI YANG BERKUALITAS
    temp = minimal;
    i = 0;
    while (i < n) {
      if (kualitas[i] > temp) {
        temp = kualitas[i];
        tk_kualitas = nm_toko[i];
      }
      i++;
    }

    // CARI YANG TERMANIS
    temp = minimal;
    i = 0;
    while (i < n) {
      if (manis[i] > temp) {
        temp = manis[i];
        tk_manis = nm_toko[i];
      }
      i++;
    }

    if ((tk_murah == tk_kualitas) || (tk_murah == tk_manis)) {
      overall = tk_murah;
    } else if(tk_kualitas == tk_manis) {
      overall = tk_kualitas;
    } else {
      overall = "Tidak ada rekomendasi khusus.";
    }

    // CETAK KESIMPULAN
    cout<<"TERMURAH: "<<tk_murah<<endl;
    cout<<"BERKUALITAS: "<<tk_kualitas<<endl;
    cout<<"TERMANIS: "<<tk_manis<<endl;
    cout<<"OVERALL: "<<overall<<endl;

  } else {
    return main();
  }
  return 0;
}
