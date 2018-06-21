#include <iostream>
#include <string>

using namespace std;

const int maks_chr = 50;
int main() {
  string karakter;

  getline(cin, karakter);
  int  pj_karakter = karakter.length();
 
  // periksa apakah karakter melebihi batas?
  // jika ya, maka input string/karakter akan diulang
  if(pj_karakter > maks_chr) {
    cout << "Error: Maksimal " << maks_chr << " karakter." << endl;
    return main();
  }
  
  // algoritmanya:
  // cari dulu karakter +/-
  // kalo ada, hapus. lalu ubah karakter sebelum karakter +/-
  // menjadi kapital/kecil
  int i = 0;
  while(i <= pj_karakter) {
    if(karakter[i] == '+') {
      karakter.erase(i,1);
      karakter[i-1] = toupper(karakter[i-1]);
    } else if(karakter[i] == '-') {
      karakter.erase(i,1);
      karakter[i-1] = tolower(karakter[i-1]);
    }
    i++;
  }
  
  // cetak karakter yang telah diperbaharui
  cout << karakter << endl; 
  return 0;
}
