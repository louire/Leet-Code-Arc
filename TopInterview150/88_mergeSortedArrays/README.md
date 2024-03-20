# Intuition
<!-- Describe your first thoughts on how to solve this problem. -->
At first, I thought we were playing a game of Tetris with numbers, trying to fit them together perfectly. But it turns out, we just needed to do some awkward squeezing and shuffling to merge these arrays.
# Approach
<!-- Describe your approach to solving the problem. -->
This solution iterates through both arrays from the end, comparing elements and merging them into nums1. 
Finally, it handles the case where there are remaining elements in nums2 and copies them into nums1.
# Complexity
- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->
like 15 minutes to solve this problem 

<!-- - Space complexity: -->
<!-- Add your space complexity here, e.g. $$O(n)$$ -->


# Code
```
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        i = m - 1
        j = n - 1
        k = m + n - 1
        
        while i >= 0 and j >= 0:
            if nums1[i] > nums2[j]:
                nums1[k] = nums1[i]
                i -= 1
            else:
                nums1[k] = nums2[j]
                j -= 1
            k -= 1
        
        while j >= 0:
            nums1[k] = nums2[j]
            j -= 1
            k -= 1

```