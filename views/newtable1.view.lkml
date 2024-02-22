view: newtable1 {
  sql_table_name: DBADMIN.NEWTABLE1 ;;

  dimension: column1 {
    type: string
    sql: ${TABLE}."COLUMN1" ;;
  }
  measure: count {
    type: count
  }
}
