/*Categorize Constructors by Region Based on Nationality
Objective: Group constructors into European or Non-European regions.
Hints:
Identify which nationalities belong to each region.
Assign each constructor a region based on their nationality.
Present a clear summary of each constructorʼs region*/

create table constructor_region 
select
      constructorId, 
      name, 
      case
            WHEN nationality IN (
            'British', 'German', 'Italian', 'French', 'Spanish',
            'Austrian', 'Swiss', 'Dutch', 'Belgian',
            'Finnish', 'Swedish'
        )
        THEN 'European'
        ELSE 'Non-European'
    END AS region
FROM constructors;

select * from constructor_region;



