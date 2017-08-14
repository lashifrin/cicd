import unittest
import logging
import json
import string
import argparse
import os
from httplib2 import Http

class TestServer(unittest.TestCase):

    def call_service(self):
         targetUri = "http://{}:8080/".format(containerIP)
         http_obj = Http(".cache")
         (resp, content) = http_obj.request(
         uri=targetUri,
         method='GET',
         headers={'Content-Type': 'application/json; charset=UTF-8', 'connection': 'close', 'Accept': 'application/json'})
         return resp,content

    def assert_service(self):
        http_obj = Http(".cache")
        (resp, content) = self.call_service()
        results = json.loads(content.decode("utf-8"))
        self.assertEqual(resp.status, 200)

    def test_service(self):
        self.assert_service()

if __name__ == '__main__':
    containerIP = os.getenv('CONTAINER_IP',"127.0.0.1")
    print "Running eureka service platform tests against container ip: {}".format(containerIP)
    unittest.main()

