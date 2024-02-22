view: customer {
  sql_table_name: SUBQUERIES_PRACTICE.CUSTOMER ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }
  dimension: cust_name {
    type: string
    sql: ${TABLE}."CUST_NAME" ;;
  }
  dimension: grade {
    type: number
    sql: ${TABLE}."GRADE" ;;
  }
  dimension: salesman_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."SALESMAN_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_id, cust_name, salesman.name, salesman.salesman_id, orders.count]
  }
}
