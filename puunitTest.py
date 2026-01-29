import unittest
from prog1 import summation
class TestSum(unittest.TestCase):
  def test_list_sum(self):
    data=[23,33]
    result=summation(data)
    self.assertEqual(result,56)
if __name__=='__main__':
  unittest.main()
