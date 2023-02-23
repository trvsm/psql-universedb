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
-- Name: fictional_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fictional_planet (
    fictional_planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    source character varying(40)
);


ALTER TABLE public.fictional_planet OWNER TO freecodecamp;

--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fictional_planet_fictional_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fictional_planet_fictional_planet_id_seq OWNER TO freecodecamp;

--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fictional_planet_fictional_planet_id_seq OWNED BY public.fictional_planet.fictional_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_mya numeric(6,1) NOT NULL,
    galaxy_type character varying(30)
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
    description text,
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_mya numeric(6,1) NOT NULL,
    is_spherical boolean,
    planet_id integer
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
    description text,
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_mya numeric(6,1) NOT NULL,
    num_moons integer,
    has_life boolean,
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
    description text,
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_mya numeric(6,1) NOT NULL,
    dist_fr_earth integer,
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
-- Name: fictional_planet fictional_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet ALTER COLUMN fictional_planet_id SET DEFAULT nextval('public.fictional_planet_fictional_planet_id_seq'::regclass);


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
-- Data for Name: fictional_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fictional_planet VALUES (1, 'tallon iv', 'metroid');
INSERT INTO public.fictional_planet VALUES (2, 'altea', 'voltron');
INSERT INTO public.fictional_planet VALUES (3, 'Betelgeuse Seven', 'hitchhikers guide');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('the galaxy that holds the solar system', 1, 'Milky Way', 14000.0, 'Sb');
INSERT INTO public.galaxy VALUES ('barred spiral, 2.5 m light years from earth', 2, 'Andromeda', 10000.0, 'SA(s)b');
INSERT INTO public.galaxy VALUES ('Elliptical galaxy in constellation Hydra', 4, 'NGC 3923', 0.0, 'E4-5');
INSERT INTO public.galaxy VALUES ('Satellite galaxy of Milky Way', 5, 'Large Magellanic Cloud', 0.0, 'SB(s)m');
INSERT INTO public.galaxy VALUES ('Dwarf irregular galaxy near Milky Way', 6, 'Small Magellanic Cloud', 0.0, 'SB(s)m pec');
INSERT INTO public.galaxy VALUES ('Spiral galaxy in constellation Triangulum', 7, 'Triangulum', 10000.0, 'SA(s)cd');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('discovered 1610, Galileo', 1, 'Io', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1610, Galileo', 2, 'Europa', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1610, Galileo', 3, 'Ganymede', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1610, Galileo', 4, 'Callisto', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1892, Barnard', 5, 'Amalthea', 0.0, false, 5);
INSERT INTO public.moon VALUES ('Discovered 1904, Perrine', 6, 'Himalia', 0.0, false, 5);
INSERT INTO public.moon VALUES ('discovered 1905, Perrine', 7, 'Elara', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1908, Melotte', 8, 'Pasiphae', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1914, Nicholson', 9, 'Sinope', 0.0, true, 5);
INSERT INTO public.moon VALUES ('Discovered 1938, Nicholson', 10, 'Lysithea', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1938, Nicholson', 11, 'Carmae', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1951, Nicholson', 12, 'Ananke', 0.0, true, 5);
INSERT INTO public.moon VALUES ('Discovered 1974, Kowal', 13, 'Leda', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 1979, Synnott', 14, 'Thebe', 0.0, false, 5);
INSERT INTO public.moon VALUES ('discovered 1979, Jewitt', 15, 'Adrastea', 0.0, false, 5);
INSERT INTO public.moon VALUES ('discovered 1979 Synnott', 16, 'Metis', 0.0, false, 5);
INSERT INTO public.moon VALUES ('discovered 1999, Scotti', 17, 'Callirrhoe', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 2000, Kowal & Roemer', 18, 'Thermisto', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 2000, Sheppard et al', 19, 'Megaclite', 0.0, true, 5);
INSERT INTO public.moon VALUES ('discovered 2000, Sheppard et al', 20, 'Taygete', 0.0, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('closest to sun', 1, 'mercury', 4600.0, 0, false, 1);
INSERT INTO public.planet VALUES ('similar size & composition to earth', 2, 'venus', 4600.0, 0, false, 1);
INSERT INTO public.planet VALUES ('only confirmed life in the galaxy', 3, 'earth', 4600.0, 1, true, 1);
INSERT INTO public.planet VALUES ('has ice, possible target for habitation', 4, 'mars', 4600.0, 2, false, 1);
INSERT INTO public.planet VALUES ('first gas giant, largest in solar system', 5, 'jupiter', 4700.0, 92, false, 1);
INSERT INTO public.planet VALUES ('second gas giant, has dust rings', 6, 'saturn', 4600.0, 83, false, 1);
INSERT INTO public.planet VALUES ('first ice giant', 7, 'uranus', 4600.0, 27, false, 1);
INSERT INTO public.planet VALUES ('second ice giant', 8, 'neptune', 4600.0, 14, false, 1);
INSERT INTO public.planet VALUES ('orbits proxima centauri, in habitable zone', 9, 'proxima centauri b', 5000.0, 0, false, 2);
INSERT INTO public.planet VALUES ('orbits proxima centauri, cold', 10, 'proxima centauri c', 5000.0, 0, false, 2);
INSERT INTO public.planet VALUES ('orbits proxima centauri, announced 2022 from espresso data', 11, 'proxima centauri d', 5000.0, 0, false, 2);
INSERT INTO public.planet VALUES ('first planet with radius similar to earth discovered in habitable zone', 12, 'kepler-186f', 3600.0, 0, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('the centre of the solar system', 1, 'sol', 4600.0, 0, 1);
INSERT INTO public.star VALUES ('small low-mass star, nearest sun', 2, 'proxima centauri', 4850.0, 4, 1);
INSERT INTO public.star VALUES ('triple star system in centaurus', 3, 'alpha centauri', 5300.0, 4, 1);
INSERT INTO public.star VALUES ('small red dwarf in ophiuchus', 4, 'barnards star', 10000.0, 6, 1);
INSERT INTO public.star VALUES ('red dwarf in leo near ecliptic', 5, 'Wolf 359', 200.0, 8, 1);
INSERT INTO public.star VALUES ('the brigtest star in night sky', 6, 'sirius', 228.0, 9, 1);
INSERT INTO public.star VALUES ('dwarf star in Cygnus', 7, 'kepler-186', 4000.0, 582, 1);


--
-- Name: fictional_planet_fictional_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fictional_planet_fictional_planet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fictional_planet fictional_planet_fictional_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet
    ADD CONSTRAINT fictional_planet_fictional_planet_id_key UNIQUE (fictional_planet_id);


--
-- Name: fictional_planet fictional_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet
    ADD CONSTRAINT fictional_planet_name_key UNIQUE (name);


--
-- Name: fictional_planet fictional_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional_planet
    ADD CONSTRAINT fictional_planet_pkey PRIMARY KEY (fictional_planet_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

