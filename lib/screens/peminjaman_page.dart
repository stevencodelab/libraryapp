import 'package:flutter/material.dart';

class PeminjamanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Peminjaman'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(context),
            SizedBox(height: 16.0),
            _buildPeminjamanForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(width: 8.0),
        Text(
          'Home / Peminjaman',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }

  Widget _buildPeminjamanForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Form Peminjaman',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: 'ID Anggota'),
          items: [
            DropdownMenuItem<String>(
              value: '1',
              child: Text('Anggota 1'),
            ),
            DropdownMenuItem<String>(
              value: '2',
              child: Text('Anggota 2'),
            ),
            DropdownMenuItem<String>(
              value: '3',
              child: Text('Anggota 3'),
            ),
          ],
          onChanged: (value) {
            // Handle when ID Anggota is selected
          },
        ),
        SizedBox(height: 16.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: 'Kelas'),
          items: [
            DropdownMenuItem<String>(
              value: 'X',
              child: Text('Kelas X'),
            ),
            DropdownMenuItem<String>(
              value: 'XI',
              child: Text('Kelas XI'),
            ),
            DropdownMenuItem<String>(
              value: 'XII',
              child: Text('Kelas XII'),
            ),
          ],
          onChanged: (value) {
            // Handle when Kelas is selected
          },
        ),
        SizedBox(height: 16.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: 'Buku'),
          items: [
            DropdownMenuItem<String>(
              value: '1',
              child: Text('Buku 1'),
            ),
            DropdownMenuItem<String>(
              value: '2',
              child: Text('Buku 2'),
            ),
            DropdownMenuItem<String>(
              value: '3',
              child: Text('Buku 3'),
            ),
          ],
          onChanged: (value) {
            // Handle when Buku is selected
          },
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Handle when the form is submitted
          },
          child: Text('Pinjam Buku'),
        ),
      ],
    );
  }
}

