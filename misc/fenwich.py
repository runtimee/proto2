# https://www.geeksforgeeks.org/binary-indexed-tree-or-fenwick-tree-2/
# https://www.hackerearth.com/practice/data-structures/advanced-data-structures/fenwick-binary-indexed-trees/tutorial/

class FenwichTreeExample:

    def __init__(self, nums):
        self.nums = [0] * len(nums)
        self.aux = [0] * (len(nums) + 1)
        for i, v in enumerate(nums):
            self.update(i, v)

    def update(self, i, value):
        diff = value - self.nums[i]
        self.nums[i] = value
        i += 1
        while i < len(self.nums)+1:
            self.aux[i] += diff
            i += i & -i

    def query_sum(self, i):
        res = 0
        while i > 0:
            res += self.aux[i]
            i -= i & -i
        return res


import unittest

class TestFenwichTree(unittest.TestCase):

    def setUp(self):
        self.tree = FenwichTreeExample([1004, 1009, 1006, 1001, 1002, 1005, 1003, 9999])

    def test_init(self):
        self.assertEqual(self.tree.aux, [  0, 1004, 2013, 1006, 4020, 1002, 2007, 1003, 17029] )

    def test_query_sum(self):
        total = self.tree.query_sum(7)
        self.assertEqual(total, sum(self.tree.nums[0:7])) # 7030

        total = self.tree.query_sum(5)
        self.assertEqual(total, sum(self.tree.nums[0:5])) # 5022

    def test_update(self):
        self.tree.update(1, 1010)
        total = self.tree.query_sum(7)
        self.assertEqual(total, sum(self.tree.nums[0:7])) # 7031


unittest.main()
