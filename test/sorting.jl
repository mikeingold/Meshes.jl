@testset "Sorting" begin
  @testset "DirectionSort" begin
    g = CartesianGrid{T}(3, 3)
    s = sort(g, DirectionSort((T(1), T(1))))
    @test centroid.(s) ==
          P2[(0.5, 0.5), (1.5, 0.5), (0.5, 1.5), (2.5, 0.5), (1.5, 1.5), (0.5, 2.5), (2.5, 1.5), (1.5, 2.5), (2.5, 2.5)]
  end
end
