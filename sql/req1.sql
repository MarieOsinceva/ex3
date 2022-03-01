USE storebd;
select category_name, count(item_category.id_item) as count 
from category
join item_category 
on item_category.id_category = category.id_category
group by item_category.id_category;


