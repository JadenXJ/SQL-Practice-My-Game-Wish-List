Create Table Gaming_Details (
  id int Identity(1,1) Primary Key,
  title varchar(150),
  publish varchar(150),
  release_date DATE,
  genre varchar(150),
  game_type varchar(150)
  )

CREATE Table Price_Details(
  title varchar(150),
  store varchar(150),
  price smallmoney
  )

Create Table Nintendo(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  )

--DROP Table Gaming_Details
--DROP Table Price_Details
--DROP Table Targ3t

SELECT * From Gaming_Details;

SELECT * From Price_Details Where store = 'Walmart';

SELECT * From Walmart

--TO help do the data of the second table, grab the title and game_type from Gaming_Details

select * FROM Gaming_Details Where game_type ='Digital'

--World's End Harem is Both...whoops, and Battle Chef Brigade is digital not online

Update Gaming_Details Set game_type = 'Both' Where id = 87;
Update Gaming_Details Set game_type = 'Digital' Where id = 1;
Update Gaming_Details Set game_type = 'Both' Where id = 16;
Update Gaming_Details Set game_type = 'Both' Where id = 20;
Update Gaming_Details Set game_type = 'Both' Where id = 23;
Update Gaming_Details Set game_type = 'Both' Where id = 28;
Update Gaming_Details Set game_type = 'Both' Where id = 36;
Update Gaming_Details Set game_type = 'Digital' Where id = 57;
Update Gaming_Details Set game_type = 'Digital' Where id = 61;
Update Gaming_Details Set game_type = 'Digital' Where id = 64;

--Find All things

SELECT title,price From Price_Details
Where store = 'Nintendo'

--Lets Make seperate store tables; Nintendo, BestBuy, Target, Walmart, GameStop, Pokemon Center, Amazon. Identify by Id, Price, rating on that platform

Create Table Nintendo(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  )
  ----Fix Assassin's creed spelling later, Anthem Zero also, Also Disgaea

Create Table Gamestop(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  );

Create Table BestBuy(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  );
 
Create Table Targ3t(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  );

Create Table Walmart(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  );

Create Table Amazon(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  );

Create Table Pokemon_Center(
  title varchar (150),
  price smallmoney,
  rating decimal(3,3),
  anticipation_rating decimal (3,3)
  )

Select Gaming_Details.title, Gaming_Details.publish, Gaming_Details.genre, Gamestop.price as Gamestop, Nintendo.price as Nintendo, BestBuy.price as BestBuy
From Gaming_Details
JOIN Nintendo ON Gaming_Details.title = Nintendo.title
JOIN Gamestop ON Gaming_Details.title = Gamestop.title
JOIN BestBuy ON Gaming_Details.title = BestBuy.title;

SELECT  Gaming_Details.id, Gaming_Details.title, publish, genre, game_type, Price_Details.price, Price_Details.store, anticipation_rating, rating
FROM Gaming_Details
JOIN Price_Details on Gaming_Details.title = Price_Details.title
JOIN Nintendo on Price_Details.title = Nintendo.title
Order By anticipation_rating desc , price ;

--Null Updates

Update Price_Details Set price = Null Where title = 'Disgaea 1 Complete' AND store = 'BestBuy';
Update Price_Details Set price = Null Where title = 'ASTRAL CHAIN' AND store = 'BestBuy';
Update Price_Details Set price = Null Where title = 'Tokyo Mirage Sessions #FE Encore' AND store = 'BestBuy';
Update Price_Details Set price = Null Where title = 'River City Girls' AND store = 'BestBuy';