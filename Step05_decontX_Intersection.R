# Step 05 - decontX intersection helper utilities

compute_seed_selection <- function(ord_D, ok_low_D, K, cell_ids = NULL) {
  if (is.null(cell_ids)) {
    cell_ids <- seq_along(ok_low_D)
  }

  eligible <- ord_D[which(ok_low_D[ord_D] %in% TRUE)]
  k_take <- min(K, length(eligible))
  seed_idx_D <- head(eligible, k_take)
  TopK_D <- cell_ids[seed_idx_D]

  list(seed_idx_D = seed_idx_D, TopK_D = TopK_D)
}
