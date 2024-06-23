CREATE TABLE public.delivery_sales
(
    delivery_sales_id integer NOT NULL,
    delivery_id integer NOT NULL,
    sales_id integer NOT NULL,
    PRIMARY KEY (delivery_sales_id)
);

ALTER TABLE IF EXISTS public.delivery_sales
    OWNER to postgres;