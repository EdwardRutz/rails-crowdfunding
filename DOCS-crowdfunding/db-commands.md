

rails g scaffold user first_name:string last_name:string email:string password:string credit_num:integer credit_exp_date:date sec_code:integer  

rails g scaffold project proj_name:string proj_description:text goal_funding:integer start_date:date end_date:date image_url:string active:boolen user:references

rails g scaffold reward reward_name:string reward_amount:integer reward_description:text reward_limit:integer project:references

rails g scaffold orders donation:float user:references project:references

rails g scaffold category cat_types:string 

rails g scaffold category_project category:references project:references





