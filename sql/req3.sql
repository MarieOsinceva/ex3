select link, alt from image
join item_image on item_image.id_img = image.id_img
join item on item.id_item = item_image.id_item
where item.id_item = 1