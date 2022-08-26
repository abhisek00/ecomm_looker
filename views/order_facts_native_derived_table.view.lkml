# rank brands by total revenue and that can be filtered using a dynamic date range and/or user inputs.

view: order_facts_native_derived_table {
  derived_table: {
    explore_source: order_items {
      column: brand { field: products.brand }
      column: total_revenue {}
      derived_column: brand_rank {
        sql: row_number() over (order by total_revenue desc) ;;
      }
    }
    datagroup_trigger: training_ecommerce_default_datagroup
  }
  dimension: brand {
    description: ""
  }
  dimension: total_revenue {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }

  dimension: brand_rank {
    type: number
  }
}
