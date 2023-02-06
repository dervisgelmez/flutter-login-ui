import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConnectService
{
  final Uri url = Uri(scheme: 'https', host: dotenv.get('API_URL'));
}