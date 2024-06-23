CREATE TABLE public.sales_item
(
    sales_item_id integer NOT NULL,
    sales_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity numeric NOT NULL,
    revenue_per_item money NOT NULL,
    PRIMARY KEY (sales_item_id)
);

ALTER TABLE IF EXISTS public.sales_item
    OWNER to postgres;