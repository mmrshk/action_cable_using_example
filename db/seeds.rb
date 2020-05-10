LeftMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10)]
  ],
  matrix_type: '1*1'
)

RightMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10)]
  ],
  matrix_type: '1*1'
)

LeftMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10)],
    [rand(1..10), rand(1..10)]
  ],
  matrix_type: '2*2'
)

RightMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10)],
    [rand(1..10), rand(1..10)]
  ],
  matrix_type: '2*2'
)

LeftMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10), rand(1..10)],
    [rand(1..10), rand(1..10), rand(1..10)]
  ],
  matrix_type: '3*2'
)

RightMatrix.create(
  matrix: [
    [rand(1..10), rand(1..10), rand(1..10)],
    [rand(1..10), rand(1..10), rand(1..10)]
  ],
  matrix_type: '2*3'
)
