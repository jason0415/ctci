require '../directed_graph'
require '../depth_first_path'

graph = DirectedGraph.new(7)
graph.add_edge(0, 1)
graph.add_edge(0, 2)
graph.add_edge(0, 5)
graph.add_edge(1, 4)
graph.add_edge(3, 2)
graph.add_edge(3, 4)
graph.add_edge(3, 5)
graph.add_edge(3, 6)
graph.add_edge(5, 2)
graph.add_edge(6, 0)
graph.add_edge(6, 4)

puts "Graph: #{graph}"

depth_first_path = DepthFirstPath.new(graph, 0)
puts "Is there a route between 0 to 3? - #{depth_first_path.path_to?(3)}"
puts "Is there a route between 0 to 4? - #{depth_first_path.path_to?(4)}"