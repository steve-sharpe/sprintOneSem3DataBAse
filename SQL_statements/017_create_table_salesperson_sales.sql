CREATE TABLE public.salesperson_sales
(
    salesperson_sales_id integer NOT NULL,
    salesperson_id integer NOT NULL,
    sales_id integer NOT NULL,
    PRIMARY KEY (salesperson_sales_id)
);

ALTER TABLE IF EXISTS public.salesperson_sales
    OWNER to postgres;