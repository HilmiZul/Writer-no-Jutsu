import os

def buat_file(nama):
    try:
        berkas = open(nama, 'w')
        berkas.close()
        print "berkas telah dibuat."
    except IOError,e:
        print "proses gagal karena:",e

def isi_file(nama,isi):
    try:
        berkas = open(nama, 'w')
        berkas.write(isi + "\n")
        berkas.close()
        print "berkas telah diisi."
    except IOError,e:
        print "proses gagal karena:",e

def baca_file(nama):
    try:
        berkas = open(nama, 'r')
        print "Isi berkas:"
        for siswa in berkas:
            print siswa

        berkas.close()
    except IOError,e:
        print "proses gagal karena:",e


def tambah_isi_file(nama,isi):
    try:
        berkas = open(nama, 'a')
        berkas.write(isi + "\n")
        berkas.close()
        print "berkas telah ditambahkan isinya."
    except IOError,e:
        print "proses gagal karena:",e


def ubah_file(nama,nama_baru):
    try:
        os.rename(nama, nama_baru)
        print "nama berkas berhasi diubah."
    except (IOError, OSError),e:
        print "proses gagal karena:",e

def hapus_file(nama):
    try:
        os.remove(nama)
        print "berkas berhasil dihapus."
    except (IOError, OSError),e:
        print "proses gagal karena:",e

def menu():
    tanya = True
    while tanya:
        print ".: MENU :."
        print "1. BUAT FILE"
        print "2. ISI FILE"
        print "3. BACA FILE"
        print "4. TAMBAH ISI FILE"
        print "5. UBAH NAMA FILE"
        print "6. HAPUS FILE"
        print "7. SELESAI"
        pilih = raw_input('PIIIH NOMOR: ')

        if pilih == "7":
            tanya = False
            print "SELESAI"
        elif pilih == "1":
            nama = raw_input('Nama file: ')
            buat_file(nama)
        elif pilih == "2":
            nama = raw_input('Nama file: ')
            isi = raw_input('Isi filenya: ')
            isi_file(nama,isi)
        elif pilih == "3":
            nama = raw_input('Nama file: ')
            baca_file(nama)
        elif pilih == "4":
            nama = raw_input('Nama file: ')
            isi = raw_input('Isi filnya: ')
            tambah_isi_file(nama,isi)
        elif pilih == "5":
            nama = raw_input('Nama file: ')
            nama_baru = raw_input('Nama file baru: ')
            ubah_file(nama,nama_baru)
        elif pilih == "6":
            nama = raw_input('Nama file: ')
            hapus_file(nama)

menu()
