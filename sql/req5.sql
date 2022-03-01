select head, Image.link, image.alt from Item
join item_image on item_image.id_item = item.id_item
join image on image.id_img = item_image.id_img
order by item.id_item DESC