view: machine_readable_business_employment_data_sep {
  sql_table_name: DBADMIN.MACHINE_READABLE_BUSINESS_EMPLOYMENT_DATA_SEP ;;

  dimension: data_value {
    type: number
    sql: ${TABLE}."DATA_VALUE" ;;
  }
  dimension: group {
    type: string
    sql: ${TABLE}."Group" ;;
  }
  dimension: magnitude {
    type: number
    sql: ${TABLE}."MAGNITUDE" ;;
  }
  dimension: period {
    type: number
    sql: ${TABLE}."PERIOD" ;;
  }
  dimension: series_reference {
    type: string
    sql: ${TABLE}."SERIES_REFERENCE" ;;
  }
  dimension: series_title_1 {
    type: string
    sql: ${TABLE}."SERIES_TITLE_1" ;;
  }
  dimension: series_title_2 {
    type: string
    sql: ${TABLE}."SERIES_TITLE_2" ;;
  }
  dimension: series_title_3 {
    type: string
    sql: ${TABLE}."SERIES_TITLE_3" ;;
  }
  dimension: series_title_4 {
    type: string
    sql: ${TABLE}."SERIES_TITLE_4" ;;
  }
  dimension: series_title_5 {
    type: string
    sql: ${TABLE}."SERIES_TITLE_5" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }
  dimension: suppressed {
    type: string
    sql: ${TABLE}."SUPPRESSED" ;;
  }
  dimension: units {
    type: string
    sql: ${TABLE}."UNITS" ;;
  }
  measure: count {
    type: count
  }
}
