import React, { FC, useState, useEffect } from "react";
import Grid from "@mui/material/Grid";
import Skeleton from "@mui/material/Skeleton";
import Paper from "@mui/material/Paper";
import Airport from "./Airport";

type AirportOperatorType = {
  id: number;
  name: string;
};

type AirportLocationType = {
  id: number;
  country: string;
  state: string;
};

type AirportType = {
  id: number;
  name: string;
  operator_id: AirportOperatorType;
  code: string;
  location_id: AirportLocationType;
  priority_order: number;
};

const ListAirport: FC = () => {
  const [loadingAirports, setLoadingAirports] = useState<boolean>(false);
  const [airports, setAirports] = useState<AirportType[]>([]);
  const getAirports = () => {
    setLoadingAirports(true);
    fetch(
      `${process.env.REACT_APP_DIRECTUS_API_URL}/items/airport?sort=priority_order&fields=*.*.*`
    )
      .then((response) => response.json())
      .then((respAirports) => {
        respAirports?.data && setAirports(respAirports?.data);
        setLoadingAirports(false);
      });
  };

  useEffect(() => {
    getAirports();
  }, []);

  return (
    <Grid container spacing={6}>
      <Grid item xs={12}>
        <Grid container justifyContent="center" spacing={2}>
          {loadingAirports && [0, 1, 2, 3, 4, 5].map((a) => (
            <Grid key={a} item xs={3} sm={6} md={4}>
              <Paper elevation={3}>
                <Skeleton
                  variant="rectangular"
                  style={{
                    minWidth: 275,
                    width: '100%',
                    minHeight: 180,
                    height: '100%',
                  }}
                />
              </Paper>
            </Grid>
          ))}
          {!loadingAirports && airports.map((a) => (
            <Grid key={a.id} item xs={3} sm={6} md={4}>
              <Airport
                airportCode={a.code}
                airportName={a.name}
                provinceOrState={a.location_id.state}
                locationCountry={a.location_id.country}
                airportOperatorName={a.operator_id.name}
              />
            </Grid>
          ))}
        </Grid>
      </Grid>
    </Grid>
  );
};

export default ListAirport;
