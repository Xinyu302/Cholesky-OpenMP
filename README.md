# Tiled Cholesky Kernel with OpenMP Task Parallelism

## Overview

This repository contains an implementation of a tiled Cholesky decomposition kernel using OpenMP task parallelism. The Cholesky decomposition is a matrix factorization that can be used for solving linear systems and computing determinants, among other applications. The implementation is designed to take advantage of parallelism using OpenMP tasks for improved performance.

## Features

- Tiled Cholesky decomposition using OpenMP tasks for parallel execution.
- Optimized for performance on multi-core processors.

## Getting Started

### Prerequisites

- OpenMP-enabled compiler
- CMake (for building)
- MKL library

### Building

To build the project, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/Xinyu302/Cholesky-OpenMP.git 
    cd Cholesky-OpenMP
    ```

2. Create a build directory and navigate to it:

    ```bash
    make
    ```
### Task Priority

You can explore the the role of priorities in OpenMP task.
