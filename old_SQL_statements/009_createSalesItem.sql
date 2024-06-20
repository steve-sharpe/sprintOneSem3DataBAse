CREATE TABLE public."Sales-Item"
(
    sales_item_id integer NOT NULL,
    sales_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity numeric NOT NULL,
    revenue_per_item money NOT NULL,
    PRIMARY KEY (sales_item_id)
);

ALTER TABLE IF EXISTS public."Sales-Item"
    OWNER to postgres;