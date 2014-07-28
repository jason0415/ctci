class DirectedGraph

  def initialize(size)
    @graph = Array.new(size) { Array.new }
  end

  def add_edge(v, w)
    @graph[v] << w
  end

  def adjacent_vertices(v)
    @graph[v]
  end

  def size
    @graph.size
  end

  def to_s
    @graph.to_s
  end

end