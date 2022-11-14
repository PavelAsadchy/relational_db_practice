--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: additional_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional_table (
    additional_table_id integer NOT NULL,
    name character varying(10) NOT NULL,
    notes text
);


ALTER TABLE public.additional_table OWNER TO freecodecamp;

--
-- Name: additional_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_table_id_seq OWNER TO freecodecamp;

--
-- Name: additional_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_table_id_seq OWNED BY public.additional_table.additional_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_million_years integer,
    notes text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    planet_id integer,
    notes text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    description text,
    distance_from_earth numeric,
    has_moon boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    notes1 text,
    notes2 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: additional_table additional_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table ALTER COLUMN additional_table_id SET DEFAULT nextval('public.additional_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: additional_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional_table VALUES (1, 'name_1', 'test');
INSERT INTO public.additional_table VALUES (2, 'name_2', NULL);
INSERT INTO public.additional_table VALUES (3, 'name_3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy_one', 1, 'desc_one', 3, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_two', 2, 'desc_two', 3, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_three', 3, 'desc_three', 8, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_four', 4, 'desc_four', 3, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_five', 5, 'desc_five', 8, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_six', 6, 'desc_six', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_one', 10, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon_two', 5, 1, NULL);
INSERT INTO public.moon VALUES (3, 'moon_three', 4, 2, NULL);
INSERT INTO public.moon VALUES (4, 'moon_three', 5, 2, NULL);
INSERT INTO public.moon VALUES (5, 'moon_four', 2, 3, NULL);
INSERT INTO public.moon VALUES (6, 'moon_five', 6, 4, NULL);
INSERT INTO public.moon VALUES (7, 'moon_six', 6, 4, NULL);
INSERT INTO public.moon VALUES (8, 'moon_seven', 8, 4, NULL);
INSERT INTO public.moon VALUES (9, 'moon_eight', 3, 4, NULL);
INSERT INTO public.moon VALUES (10, 'moon_nine', 6, 5, NULL);
INSERT INTO public.moon VALUES (11, 'moon_ten', 7, 5, NULL);
INSERT INTO public.moon VALUES (12, 'moon_eleven', 4, 6, NULL);
INSERT INTO public.moon VALUES (13, 'moon_twelve', 5, 6, NULL);
INSERT INTO public.moon VALUES (14, 'moon_threeteen', 2, 7, NULL);
INSERT INTO public.moon VALUES (15, 'moon_fourteen', 6, 7, NULL);
INSERT INTO public.moon VALUES (16, 'moon_fifteen', 4, 8, NULL);
INSERT INTO public.moon VALUES (17, 'moon_sixteen', 6, 8, NULL);
INSERT INTO public.moon VALUES (18, 'moon_seventeen', 8, 9, NULL);
INSERT INTO public.moon VALUES (19, 'moon_eightteen', 3, 10, NULL);
INSERT INTO public.moon VALUES (20, 'moon_nineteen', 6, 11, NULL);
INSERT INTO public.moon VALUES (21, 'moon_twenty', 7, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_one', true, 'desc_planet_one', 200, true, 1);
INSERT INTO public.planet VALUES (2, 'planet_two', false, 'desc_planet_two', 200, false, 1);
INSERT INTO public.planet VALUES (3, 'planet_three', true, 'desc_planet_three', 200, true, 2);
INSERT INTO public.planet VALUES (4, 'planet_four', false, 'desc_planet_four', 200, false, 2);
INSERT INTO public.planet VALUES (5, 'planet_five', true, 'desc_planet_five', 300, true, 3);
INSERT INTO public.planet VALUES (6, 'planet_six', false, 'desc_planet_six', 300, false, 3);
INSERT INTO public.planet VALUES (7, 'planet_seven', true, 'desc_planet_seven', 400, true, 4);
INSERT INTO public.planet VALUES (8, 'planet_eight', false, 'desc_planet_eight', 400, false, 4);
INSERT INTO public.planet VALUES (9, 'planet_nine', true, 'desc_planet_nine', 500, true, 5);
INSERT INTO public.planet VALUES (10, 'planet_ten', false, 'desc_planet_ten', 500, false, 5);
INSERT INTO public.planet VALUES (11, 'planet_eleven', true, 'desc_planet_eleven', 600, true, 6);
INSERT INTO public.planet VALUES (12, 'planet_twelve', false, 'desc_planet_twelve', 600, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_one', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star_two', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star_three', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star_four', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star_five', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star_six', 6, NULL, NULL);


--
-- Name: additional_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: additional_table additional_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table
    ADD CONSTRAINT additional_table_id_key UNIQUE (additional_table_id);


--
-- Name: additional_table additional_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table
    ADD CONSTRAINT additional_table_pkey PRIMARY KEY (additional_table_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

