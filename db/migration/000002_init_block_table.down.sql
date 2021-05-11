DELETE FROM
  blocks
WHERE
  code IN (
    "frequently_bought_together",
    "maybe_you_like",
    "similar_products"
  );
