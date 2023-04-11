import unittest
from app import app


class TestApp(unittest.TestCase):
    def test_hello(self):
        with app.test_client() as client:
            res = client.get("/")
            self.assertEqual(res.status_code, 200)
            self.assertEqual(res.json, {"success": True})
