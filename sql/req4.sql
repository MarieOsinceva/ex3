select category_name, Category.Descript from category
join item_category on item_category.id_category = category.id_category
join item on item.id_item = item_category.id_item
where item.id_item = 1