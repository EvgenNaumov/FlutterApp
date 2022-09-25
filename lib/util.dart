import 'dart:math';

const baseUrl = 'http://rickandmortyapi.com/';
const BASE_URL = 'https://api.tomorrow.io/';
const DOMEN_URL = '/v4/timelines';
const API_KEY = 'iWGYt7PLvZdX7dd1wY5m51teXbmsI5bE';

int getRandom() => Random().nextInt(100000);
List<int> completedCodes = [200, 201, 204];