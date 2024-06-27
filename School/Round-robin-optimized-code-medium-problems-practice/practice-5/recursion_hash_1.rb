tree = [
  {
    TITLE: "parent1",
    SUBMENU: [
      {
        SUBMENU: [
          {
            SUBMENU: [
              {
                TITLE: "Child 1"
              }
            ]
          },
          {
            SUBMENU: [
              {
                TITLE: "Child 3"
              }
            ]
          },
          {
            SUBMENU: [
              {
                SUBMENU: [
                  {
                    TITLE: "Child 4"
                  }
                ]
              },
              {
                SUBMENU: []
              }
            ]
          },
          {
            SUBMENU: [
              {
                SUBMENU: []
              }
            ]
          }
        ]
      }
    ]
  },
  {
    TITLE: "parent2",
    SUBMENU: [
      {
        TITLE: "Child 4"
      }
    ]
  }
]


# output should be parent1,  Child 1, Child 3 …..etc
require 'pry'
def recursion_hash_1(tree, arr = [])
    tree.each do |data|
        arr << data[:TITLE]
        # binding.pry
        if !data[:SUBMENU].nil? && data[:SUBMENU].length > 0
            recursion_hash_1(data[:SUBMENU], arr)
        end
    end
    return arr.compact
end

p recursion_hash_1(tree)