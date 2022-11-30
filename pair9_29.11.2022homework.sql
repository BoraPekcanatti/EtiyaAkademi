--1
select * from customer c
inner join adress a
on c.shipping_adressid = a.id
--2
select * from customer c
inner join adress a
on c.invoice_adressid = a.id
--3
select * from customer c
inner join adress a
on c.invoice_adressid = a.id
inner join street st
on a.street_id = st.id
--4
select * from customer c
inner join adress a
on c.invoice_adressid = a.id
right join street st
on a.street_id = st.id
--5
select * from city ci
inner join country co
on ci.countryid = co.id
--6
select pr.id,pr.name,pr.unit_price,pr.stock from products pr
full outer join categories ca
on pr.categoryid = ca.id
--7
select pr.id,pr.name,pr.unit_price,pr.stock, su.id,su.name,su.type from products pr
full outer join categories ca
on pr.categoryid = ca.id
right join subcategory su
on ca.subcategoryid = su.id
--8
select pr.id,pr.name,pr.unit_price,pr.stock, su.id,su.name,su.type from products pr
left join categories ca
on pr.categoryid = ca.id
right join subcategory su
on ca.subcategoryid = su.id
--9
select * from orders o
right join cargo car
on o.cargoid=car.id
--10
select * from orders o
right join cargo car
on o.cargoid=car.id
full outer join shippers sh
on car.shippers_id = sh.id
--11
select * from products_colour pc
right join products p 
on pc.productsid = p.id
left join colour c
on pc.colourid = c.id
--12
select pc.productsid,pc.colourid,c.name,p.name from products_colour pc
right join products p 
on pc.productsid = p.id
left join colour c
on pc.colourid = c.id
--13
select * from products p
inner join discount_coupon dc
on p.discount_couponid = dc.id
--14
select p.id,p.name,p.unit_price,dc.name,dc.ratio from products p
full outer join discount_coupon dc
on p.discount_couponid = dc.id
--15
select * from products p
inner join products_order po
on p.id = po.productsid
inner join orders o
on po.orderid = o.id
inner join customer c
on o.customerid = c.id
full outer join adress a
on c.shipping_adressid = a.id


