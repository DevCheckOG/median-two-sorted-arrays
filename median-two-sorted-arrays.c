#include <stdio.h>
#include <limits.h>
#include <math.h>

double findMedianSortedArrays(int* nums1, int nums1Size, int* nums2, int nums2Size) {
    if (nums1Size > nums2Size) {
        int* temp = nums1; nums1 = nums2; nums2 = temp;
        int tempSize = nums1Size; nums1Size = nums2Size; nums2Size = tempSize;
    }
    
    int left = 0, right = nums1Size;
    while (left <= right) {
        int partitionX = (left + right) / 2;
        int partitionY = (nums1Size + nums2Size + 1) / 2 - partitionX;
        
        int leftX = (partitionX == 0) ? INT_MIN : nums1[partitionX - 1];
        int rightX = (partitionX == nums1Size) ? INT_MAX : nums1[partitionX];
        int leftY = (partitionY == 0) ? INT_MIN : nums2[partitionY - 1];
        int rightY = (partitionY == nums2Size) ? INT_MAX : nums2[partitionY];
        
        if (leftX <= rightY && leftY <= rightX) {
            if ((nums1Size + nums2Size) % 2 == 1) {
                return (double) fmax(leftX, leftY);
            }
            return (fmax(leftX, leftY) + fmin(rightX, rightY)) / 2.0;
        }
        else if (leftX > rightY) {
            right = partitionX - 1;
        } else {
            left = partitionX + 1;
        }
    }
    
    return 0.0;
}

int main() {
    int nums1[] = {1, 3};
    int nums2[] = {2};
    int nums1Size = sizeof(nums1) / sizeof(nums1[0]);
    int nums2Size = sizeof(nums2) / sizeof(nums2[0]);
    
    printf("Example 1:\n");
    printf("nums1 = [1, 3], nums2 = [2]\n");
    printf("Median: %.5f\n\n", findMedianSortedArrays(nums1, nums1Size, nums2, nums2Size));
    
    int nums3[] = {1, 2};
    int nums4[] = {3, 4};
    int nums3Size = sizeof(nums3) / sizeof(nums3[0]);
    int nums4Size = sizeof(nums4) / sizeof(nums4[0]);
    
    printf("Example 2:\n");
    printf("nums1 = [1, 2], nums2 = [3, 4]\n");
    printf("Median: %.5f\n\n", findMedianSortedArrays(nums3, nums3Size, nums4, nums4Size));
    
    int nums5[] = {0, 0};
    int nums6[] = {0, 0};
    int nums5Size = sizeof(nums5) / sizeof(nums5[0]);
    int nums6Size = sizeof(nums6) / sizeof(nums6[0]);
    
    printf("Example 3:\n");
    printf("nums1 = [0, 0], nums2 = [0, 0]\n");
    printf("Median: %.5f\n", findMedianSortedArrays(nums5, nums5Size, nums6, nums6Size));
    
    return 0;
}
