n = raw_input('n: ')
n_col = raw_input('berapa kolom: ')

try:
    f = open('ganjil.txt', 'w')
    col = 0
    for i in range(1,int(n)):
        if i % 2 == 1:
            col += 1
            if col < int(n_col):
                f.write(str(i) + "\t")
            else:
                f.write(str(i) + "\n")
                col = 0
    f.close()
    print "Selesai."
except IOError,e:
    print "Proses gagal karena:",e
