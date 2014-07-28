class DepthFirstPath

  def initialize(graph=[], s)
    @source = s
    @graph = graph
    @visited = Array.new(@graph.size, false)

    dfs(s)
  end

  def path_to?(v)
    @visited[v]
  end

  private
  def dfs(v)
    @visited[v] = true
    @graph.adjacent_vertices(v).each do |w|
      dfs(w) unless @visited[w]
    end
  end

end