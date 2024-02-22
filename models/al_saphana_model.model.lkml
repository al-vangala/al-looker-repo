connection: "al_saphana"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: al_saphana_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: al_saphana_model_default_datagroup

explore: machine_readable_business_employment_data_sep {}

explore: newtable1 {}

