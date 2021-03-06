include: "criteria_base.view"

explore: gender_adapter {
  persist_with: adwords_etl_datagroup
  extends: [criteria_joins_base]
  from: gender_adapter
  view_label: "Gender"
  view_name: criteria
  hidden: yes
}

view: gender_adapter {
  extends: [google_ads_config, criteria_base]
  sql_table_name: {{ criteria.adwords_schema._sql }}.Gender_{{ criteria.adwords_customer_id._sql }} ;;

  dimension: criteria {
    label: "Gender"
  }
}