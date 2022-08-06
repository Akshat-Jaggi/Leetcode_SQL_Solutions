/* Each node in the tree can be one of three types:

    1."Leaf": if the node is a leaf node.
    2."Root": if the node is the root of the tree.
    3."Inner": If the node is neither a leaf node nor a root node.

Write an SQL query to report the type of each node in the tree.
Return the result table ordered by id in ascending order.*/

# select 
# id as "Id",
# CASE
# WHEN tree.id = (select atree.id from tree atree where atree.p_id IS NULL) THEN "Root"
# WHEN tree.id in (select atree.p_id from tree atree) THEN "Inner"
# ELSE "Leaf"
# END as Type
# from Tree
# order by "Id"

select id,
    case when p_id is null then 'Root'
         when id in (select p_id from tree) then 'Inner'
         else 'Leaf'
    end as Type
from tree
order by id