view: orders {
  sql_table_name: SUBQUERIES_PRACTICE.ORDERS ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }
  dimension_group: ord {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORD_DATE" ;;
  }
  dimension: ord_no {
    type: number
    sql: ${TABLE}."ORD_NO" ;;
  }
  dimension: purch_amt {
    type: number
    sql: ${TABLE}."PURCH_AMT" ;;
  }
  dimension: salesman_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."SALESMAN_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer.customer_id, customer.cust_name, salesman.name, salesman.salesman_id]
  }
}
