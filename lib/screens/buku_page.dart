import 'package:flutter/material.dart';

class BukuPage extends StatefulWidget {
  @override
  _BukuPageState createState() => _BukuPageState();
}

class _BukuPageState extends State<BukuPage> {
  int _currentPage = 1;
  int _totalPages = 5; // Anggap saja ada 5 halaman data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
            ],
          ),
          SizedBox(height: 16.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('ID Buku')),
                DataColumn(label: Text('ISBN')),
                DataColumn(label: Text('Judul Buku')),
                DataColumn(label: Text('Kategori')),
                DataColumn(label: Text('Penerbit')),
                DataColumn(label: Text('Pengarang')),
                DataColumn(label: Text('Stok Tersedia')),
                DataColumn(label: Text('Stok Dipinjam')),
                DataColumn(label: Text('No. Rak')),
                DataColumn(label: Text('Tahun Terbit')),
                DataColumn(label: Text('Total Stok')),
                DataColumn(label: Text('Keterangan')),
                DataColumn(label: Text('Pilihan')),
              ],
              rows: List.generate(
                10, // Anggap saja ada 10 data buku per halaman
                (index) => DataRow(
                  cells: [
                    DataCell(Text('${index + 1}')),
                    DataCell(Text('ID Buku')),
                    DataCell(Text('ISBN')),
                    DataCell(Text('Judul Buku')),
                    DataCell(Text('Kategori')),
                    DataCell(Text('Penerbit')),
                    DataCell(Text('Pengarang')),
                    DataCell(Text('Stok Tersedia')),
                    DataCell(Text('Stok Dipinjam')),
                    DataCell(Text('No. Rak')),
                    DataCell(Text('Tahun Terbit')),
                    DataCell(Text('Total Stok')),
                    DataCell(Text('Keterangan')),
                    DataCell(Text('Pilihan')),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _currentPage > 1 ? () => _changePage(-1) : null,
                icon: Icon(Icons.arrow_back),
              ),
              Text('Halaman $_currentPage dari $_totalPages'),
              IconButton(
                onPressed: _currentPage < _totalPages ? () => _changePage(1) : null,
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _changePage(int value) {
    setState(() {
      _currentPage += value;
    });
  }
}
