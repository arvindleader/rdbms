--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age character varying(40) NOT NULL,
    olu integer,
    ola integer
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    celestial numeric,
    fifth_col integer
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
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    planet_id integer,
    dudu integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    available_yes boolean,
    kill_all boolean,
    star_id integer,
    entry integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    nick_name text,
    galaxy_id integer
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, '1', '2', NULL, NULL);
INSERT INTO public.fifth_table VALUES (2, '3', '4', NULL, NULL);
INSERT INTO public.fifth_table VALUES (3, '5', '6', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '12', 11, 10.0, NULL);
INSERT INTO public.galaxy VALUES (2, '13', 14, 15.0, NULL);
INSERT INTO public.galaxy VALUES (3, '16', 17, 18.0, NULL);
INSERT INTO public.galaxy VALUES (4, '19', 20, 21.0, NULL);
INSERT INTO public.galaxy VALUES (5, '22', 23, 24.0, NULL);
INSERT INTO public.galaxy VALUES (6, '25', 26, 27.0, NULL);
INSERT INTO public.galaxy VALUES (8, '40', 60, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, '41', 61, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, '42', 62, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, '43', 63, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, '44', 64, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, '45', 65, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, '46', 66, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, '47', 67, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, '48', 68, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, '49', 69, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, '50', 70, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, '51', 71, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, '52', 72, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, '53', 73, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, '54', 74, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, '55', 75, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, '56', 76, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, '57', 77, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, '58', 78, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 2, 1, 0);
INSERT INTO public.moon VALUES (2, '3', 4, 2, 1);
INSERT INTO public.moon VALUES (3, '5', 6, 3, 0);
INSERT INTO public.moon VALUES (4, '7', 8, 4, 1);
INSERT INTO public.moon VALUES (5, '9', 10, 5, 0);
INSERT INTO public.moon VALUES (6, '11', 12, 6, 1);
INSERT INTO public.moon VALUES (7, '20', 21, 7, 0);
INSERT INTO public.moon VALUES (8, '22', 23, 8, 0);
INSERT INTO public.moon VALUES (9, '24', 25, 9, 0);
INSERT INTO public.moon VALUES (10, '26', 27, 10, 0);
INSERT INTO public.moon VALUES (11, '28', 29, 11, 0);
INSERT INTO public.moon VALUES (12, '30', 31, 12, 0);
INSERT INTO public.moon VALUES (13, '32', 33, 13, 0);
INSERT INTO public.moon VALUES (14, '81', 2, 14, 3);
INSERT INTO public.moon VALUES (15, '4', 5, 15, 6);
INSERT INTO public.moon VALUES (16, '82', 8, 16, 9);
INSERT INTO public.moon VALUES (17, '10', 11, 17, 12);
INSERT INTO public.moon VALUES (18, '13', 14, 18, 15);
INSERT INTO public.moon VALUES (19, '16', 17, 19, 18);
INSERT INTO public.moon VALUES (20, '19', 20, 20, 21);
INSERT INTO public.moon VALUES (21, '83', 23, 21, 24);
INSERT INTO public.moon VALUES (22, '40', 60, 22, NULL);
INSERT INTO public.moon VALUES (23, '41', 61, 23, NULL);
INSERT INTO public.moon VALUES (24, '42', 62, 24, NULL);
INSERT INTO public.moon VALUES (25, '43', 63, 25, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 2, NULL, NULL, 1, 0);
INSERT INTO public.planet VALUES (2, '3', 4, NULL, NULL, 2, 1);
INSERT INTO public.planet VALUES (3, '5', 6, NULL, NULL, 3, 0);
INSERT INTO public.planet VALUES (4, '7', 8, NULL, NULL, 4, 1);
INSERT INTO public.planet VALUES (5, '9', 10, NULL, NULL, 5, 0);
INSERT INTO public.planet VALUES (6, '11', 12, NULL, NULL, 6, 1);
INSERT INTO public.planet VALUES (8, '22', 23, NULL, NULL, 8, 0);
INSERT INTO public.planet VALUES (9, '24', 25, NULL, NULL, 9, 0);
INSERT INTO public.planet VALUES (10, '26', 27, NULL, NULL, 10, 0);
INSERT INTO public.planet VALUES (11, '28', 29, NULL, NULL, 11, 0);
INSERT INTO public.planet VALUES (12, '30', 31, NULL, NULL, 12, 0);
INSERT INTO public.planet VALUES (13, '32', 33, NULL, NULL, 13, 0);
INSERT INTO public.planet VALUES (14, '40', 60, NULL, NULL, 14, NULL);
INSERT INTO public.planet VALUES (15, '41', 61, NULL, NULL, 15, NULL);
INSERT INTO public.planet VALUES (16, '42', 62, NULL, NULL, 16, NULL);
INSERT INTO public.planet VALUES (7, '20', 21, NULL, NULL, 7, 0);
INSERT INTO public.planet VALUES (17, '43', 63, NULL, NULL, 17, NULL);
INSERT INTO public.planet VALUES (18, '44', 64, NULL, NULL, 18, NULL);
INSERT INTO public.planet VALUES (19, '45', 65, NULL, NULL, 19, NULL);
INSERT INTO public.planet VALUES (20, '46', 66, NULL, NULL, 20, NULL);
INSERT INTO public.planet VALUES (21, '47', 67, NULL, NULL, 21, NULL);
INSERT INTO public.planet VALUES (22, '48', 68, NULL, NULL, 22, NULL);
INSERT INTO public.planet VALUES (23, '49', 69, NULL, NULL, 23, NULL);
INSERT INTO public.planet VALUES (24, '50', 70, NULL, NULL, 24, NULL);
INSERT INTO public.planet VALUES (25, '51', 71, NULL, NULL, 25, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 2, 'jo', 1);
INSERT INTO public.star VALUES (2, '3', 4, 'lo', 2);
INSERT INTO public.star VALUES (3, '5', 6, 'ho', 3);
INSERT INTO public.star VALUES (4, '7', 8, 'fo', 4);
INSERT INTO public.star VALUES (5, '9', 10, 'mo', 5);
INSERT INTO public.star VALUES (6, '11', 12, 'so', 6);
INSERT INTO public.star VALUES (7, '40', 60, NULL, 8);
INSERT INTO public.star VALUES (8, '41', 61, NULL, 9);
INSERT INTO public.star VALUES (9, '42', 62, NULL, 10);
INSERT INTO public.star VALUES (10, '43', 63, NULL, 11);
INSERT INTO public.star VALUES (11, '44', 64, NULL, 12);
INSERT INTO public.star VALUES (12, '45', 65, NULL, 13);
INSERT INTO public.star VALUES (13, '46', 66, NULL, 14);
INSERT INTO public.star VALUES (14, '47', 67, NULL, 15);
INSERT INTO public.star VALUES (15, '48', 68, NULL, 16);
INSERT INTO public.star VALUES (16, '49', 69, NULL, 17);
INSERT INTO public.star VALUES (17, '50', 70, NULL, 18);
INSERT INTO public.star VALUES (18, '51', 71, NULL, 19);
INSERT INTO public.star VALUES (19, '52', 72, NULL, 20);
INSERT INTO public.star VALUES (20, '53', 73, NULL, 21);
INSERT INTO public.star VALUES (21, '54', 74, NULL, 22);
INSERT INTO public.star VALUES (22, '55', 75, NULL, 23);
INSERT INTO public.star VALUES (23, '56', 76, NULL, 24);
INSERT INTO public.star VALUES (24, '57', 77, NULL, 25);
INSERT INTO public.star VALUES (25, '58', 78, NULL, 26);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 26, true);


--
-- Name: moon_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_seq', 26, true);


--
-- Name: planet_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

