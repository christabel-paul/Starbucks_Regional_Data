

--total starbucks table as 'total' cities table as 'city'
--get the county household income from county table and join to each location from total table
select allStores.ID, allStores.County, allStores.Address, allStores.Coordinates, county.[Median Household Income]
from StarbucksCaliforniaTotal As allStores Inner Join StarbucksCaliforniaCounties as county
on allStores.County = county.County


--get the number of locations in a county
select allStores.County, Count(*) as numberOfStores
from StarbucksCaliforniaTotal as AllStores
group by County

--get county with max number of locations
select county, [Number of Starbucks] 
from StarbucksCaliforniaCounties
where  [Number of Starbucks] = (select max([Number of Starbucks]) from StarbucksCaliforniaCounties)

--get county with max income
select county, [Median Household Income]
from StarbucksCaliforniaCounties
where  [Median Household Income] = (select max([Median Household Income]) from StarbucksCaliforniaCounties)

--total starbucks table as 'total' cities table as 'city'
--get the county population from county table and join to each location from total table
select allStores.ID, allStores.County, allStores.Coordinates, county.[2010 Population] as CountyPopulation
from StarbucksCaliforniaTotal As allStores Inner Join StarbucksCaliforniaCounties as county
on allStores.County = county.County
