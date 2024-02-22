view: salesman {
  sql_table_name: SUBQUERIES_PRACTICE.SALESMAN ;;
  drill_fields: [salesman_id]

  dimension: salesman_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."SALESMAN_ID" ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }
  dimension: commission {
    type: number
    sql: ${TABLE}."COMMISSION" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [salesman_id, name, customer.count, orders.count]
  }
}
