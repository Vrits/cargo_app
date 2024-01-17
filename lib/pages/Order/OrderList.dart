List<Map<String, String>> itemsList = [
  {
    'status': 'Dalam Pengiriman',
    'id': '1302-21398273-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Menunggu Diproses',
    'id': '1302-10000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Menunggu Diproses',
    'id': '1302-20000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Diterima',
    'id': '1302-30000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Dalam Pengiriman',
    'id': '1302-40000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Diterima',
    'id': '1302-50000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Retur',
    'id': '1302-60000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Dalam Pengiriman',
    'id': '1302-70000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Diterima',
    'id': '1302-80000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Diterima',
    'id': '1302-90000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
  {
    'status': 'Dalam Pengiriman',
    'id': '1302-11000000-1238',
    'from': 'JL.Buntu, Jakarta',
    'to': 'JL.G.Soebardjo, Banjarmasin',
    'date_estimation': '10 Januari 2023'
  },
];

void filterList(String id) {
  itemsList = itemsList.where((element) => element['id'] != id).toList();
}
