### 默认的 lammp info
#### version
3Mar20
#### lammps input script
lattice         fcc 3.615
region          box block 0 40 0 40 0 40
pair_style      eam
pair_coeff      1 1 Cu_u3.eam
run 100

---
# arm

## 树莓派 3b
### cpu info
Hardware        : BCM2835
Revision        : a32082
Model           : Raspberry Pi 3 Model B Rev 1.2

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
| :----: | :----: | :----: |:----:|
| 1 | 0.140 | 171.798 | 0.323 |
| 2 | 0.262 | 91.741 | 0.606 |
| 3 | 0.372 | 64.462 | 0.862 |
| 4 | 0.429 | 55.937 | 0.993 |

## 树莓派3b+
### cpu info
Hardware        : BCM2835
Revision        : a020d3
Model           : Raspberry Pi 3 Model B Plus Rev 1.3

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
| :----: | :----: | :----: |:----:|
| 1 | 0.161 | 149.445 | 0.372 |
| 2 | 0.289 | 83.146 | 0.668 |
| 3 | 0.373 | 64.348 | 0.863 |
| 4 | 0.430 | 55.791 | 0.996 |

---
# Intel

## J3455
### cpu info
model name      : Intel(R) Celeron(R) CPU J3455 @ 1.50GHz

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
|:----:|:----:|:----:|:----:|
| 1 | 0.483 | 49.702 | 1.118 |
| 2 | 0.903 | 26.591 | 2.089 |
| 3 | 1.329 | 18.054 | 3.077 |
| 4 | 1.614 | 14.868 | 3.737 |


## i5 7500
### cpu info
model name      : Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
|:----------:|:------:|:--------:|:----:|
|     1      | 1.317  |  18.224  | 3.048        |
|     2      | 2.495  |  9.620   | 5.775        |
|     3      | 3.657  |  6.562   | 8.466        |
|     4      | 4.525  |  5.304   | 10.475       |

## Intel(R) Xeon(R) CPU E5-2670
### cpu info
Intel(R) Xeon(R) CPU E5-2670 0 @ 2.60GHz

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
| :----: |:----:|:----:|:----:|
| 1 | 0.944 | 25.430 | 2.185 |
| 2 | 1.841 | 13.039 | 4.261 |
| 3 | 2.767 | 8.674 | 6.405 |
| 4 | 3.541 | 6.777 | 8.198 |
| 5 | 4.020 | 5.970 | 9.307 |
| 6 | 5.078 | 4.727 | 11.754 |
| 7 | 5.535 | 4.336 | 12.814 |
| 8 | 6.399 | 3.751 | 14.812 |
| 9 | 7.569 | 3.171 | 17.522 |
| 10 | 7.538 | 3.184 | 17.449 |
| 11 | 7.663 | 3.132 | 17.739 |
| 12 | 9.274 | 2.588 | 21.468 |
| 13 | 8.066 | 2.976 | 18.670 |
| 14 | 10.020 | 2.395 | 23.195 |
| 15 | 11.152 | 2.152 | 25.815 |
| 16 | 11.836 | 2.028 | 27.399 |

---
# AMD

## R5 5600x
### cpu info
model name      : AMD Ryzen 5 5600X 6-Core Processor
### OS and compiler :
Ubuntu 22.04 
g++11.2.0 
mpich

#### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
|:----: | :----: | :----: |:----:|
| 1 | 1.962 | 12.234 | 4.541 |
| 2 | 3.811 | 6.298 | 8.821 |
| 3 | 5.649 | 4.248 | 13.077 |
| 4 | 7.230 | 3.319 | 16.736 |
| 5 | 8.408 | 2.854 | 19.463 |
| 6 | 10.496 | 2.287 | 24.295 |

### Intel One API
#### Performance
没啥区别^^

### windows 11 wsl2 ubuntu 22.04
#### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
| :----: | :----: | :----: |:----:|
| 1 | 1.911 | 12.562 | 4.422 |
| 2 | 3.620 | 6.629 | 8.380 |
| 3 | 5.277 | 4.548 | 12.215 |
| 4 | 6.489 | 3.698 | 15.022 |
| 5 | 7.707 | 3.114 | 17.840 |
| 6 | 9.794 | 2.450 | 22.671 |

^^有些许减弱

---
# 跨节点测试

## AMD R5 5600x + intel i5 7500
千兆以太网
### Performance
十个核心，结果是7 ns/day，更慢了，着说明快慢搭配是非常糟糕的搭配。

---
# GPU

## GTX 1050 Ti + AMD 5600x 
Intel one API + cuda + lammps 23jun22
1 GPU  with n cpu cores

### Performance
| # of cores | ns/day | hours/ns | timeseteps/s |
|:----:|:----:|:----:|:----:|
| 1 | 32.744 | 0.733 | 75.797 |
| 2 | 34.377 | 0.698 | 79.577 |
| 3 | 32.919 | 0.729 | 76.202 |
| 4 | 35.743 | 0.671 | 82.738 |
| 5 | 35.350 | 0.679 | 81.828 |
| 6 | 33.465 | 0.717 | 77.466 |

## GTX 1660 Super + AMD 5600x 
Intel one API + cuda + lammps 23jun22
1 GPU  with n cpu cores

### Performance
| # of cores | ns/day | hours/ns | timeseteps/s |
|:----:|:----:|:----:|:----:|
| 1 | 54.523 | 0.440 | 126.211 |
| 2 | 62.254 | 0.386 | 144.107 |
| 3 | 68.192 | 0.352 | 157.851 |
| 4 | 68.626 | 0.350 | 158.856 |
| 5 | 66.226 | 0.362 | 153.300 |
| 6 | 65.447 | 0.367 | 151.499 |


---
# GPU on wsl

## GTX 1050Ti + AMD 5600x 
cuda + lammps 23jun22
1 GPU  with n cpu cores

### Performance
| # of cores | ns/day | hours/ns | timeseteps/s |
|:----:|:----:|:----:| :----:|
| 1 | 30.868 | 0.778 | 71.453 |
| 2 | 28.768 | 0.834 | 66.593 |
| 3 | 27.146 | 0.884 | 62.839 |
| 4 | 30.519 | 0.786 | 70.646 |
| 5 | 25.411 | 0.944 | 58.822 |
| 6 | 14.263 | 1.683 | 33.016 |

## GTX 1660 Super + AMD 5600x 
cuda + lammps 23jun22
1 GPU  with n cpu cores

### Performance

| # of cores | ns/day | hours/ns | timeseteps/s |
|:----------:|:------:|:--------:| :------------: |
|     1      | 51.887 |  0.463   | 120.109      |
|     2      | 46.544 |  0.516   | 107.740      |
|     3      | 53.566 |  0.448   | 123.996      |
|     4      | 57.159 |  0.420   | 132.314      |
|     5      | 51.964 |  0.462   | 120.288      |
|     6      | 61.482 |  0.390   | 142.320      |








