# If necessary, uncomment the line below to include explore_source.
# include: "training_ecommerce.model.lkml"

view: order_facts_native_derived_table {
  derived_table: {
    explore_source: order_items {
      column: order_id {}
      column: user_id {}
      column: order_item_count {}
      column: total_revenue {}
    }
  }
  dimension: order_id {
    description: ""
    type: number
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: order_item_count {
    description: ""
    type: number
  }
  dimension: total_revenue {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
}
