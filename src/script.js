import http from 'k6/http';
import { sleep } from 'k6';

export default function() {
  http.get('http://example-prometheus-nodejs-thomas-test-cd-qlf.qlf.co.as8677.net/');
  sleep(1);
}
