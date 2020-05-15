import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  stages: [
    { duration: '30s', target: 5 },
    { duration: '1m30s', target: 10 },
    { duration: '20s', target: 0 },
  ],
};

export default function() {
  let res = http.get('http://nodeapp-my-node-app:3001 ');
  check(res, { 'status was 200': r => r.status == 200 });
  sleep(1);
}
