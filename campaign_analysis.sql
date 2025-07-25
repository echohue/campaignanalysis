select * from `dbo.products`;
-- categorising prices
select productid,productname,category,price,
case
when price <50 then 'Low'
when price between 50 and 200 then 'Medium'
else 'High'
end as PriceCategory
from `dbo.products`;
-- joining customers and geography
select c.customerid,c.customername,c.email,c.gender,c.age,g.country,g.city from `dbo.customers` c left join `dbo.geography` g on c.geographyid = g.geographyid;
-- cleaning reviews table 
select reviewid,customerid,productid,reviewdate,rating,replace(reviewtext,'  ',' ') as reviewtext from `dbo.customer_reviews`;
-- cleaning and standadardising engagement data
select * from `dbo.engagement_data`;
select engagementid,contentid,likes,engagementdate,campaignid,productid,upper(replace(lower(contenttype),"socialmedia","SOCIAL MEDIA")) as contentype,left(viewsclickscombined,locate('-',viewsclickscombined)-1) as views, right(viewsclickscombined,length(viewsclickscombined)-locate('-',viewsclickscombined)) as clicks from `dbo.engagement_data` where lower(contenttype) != 'newsletter';
-- selecting duplicate entries from the customer journey datsets 
select * from `dbo.customer_journey`;
select journeyid,customerid,productid,visitdate,stage,`action`,coalesce(nullif(duration,''),avg_duration) as duration from(select journeyid,customerid,productid,visitdate,upper(stage) as stage,`action`,duration,round(avg(cast(nullif(duration,'') as float)) over (partition by customerid),2)as avg_duration,row_number() over(partition by journeyid order by journeyid) as rnk from `dbo.customer_journey`) as subquery where rnk = 1;
