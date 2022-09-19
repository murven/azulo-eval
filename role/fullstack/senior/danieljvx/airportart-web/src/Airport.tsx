import React, { FC } from "react";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import Typography from "@mui/material/Typography";

interface Props {
  airportCode: string;
  airportName: string;
  provinceOrState: string;
  locationCountry: string;
  airportOperatorName: string;
}

const Airport: FC<Props> = ({
  airportCode,
  airportName,
  provinceOrState,
  locationCountry,
  airportOperatorName,
}) => {
  return (
    <Card elevation={3} sx={{ minWidth: 275 }}>
      <CardContent>
        <Typography variant="h5" component="div">
          {airportCode} - {airportName}
        </Typography>
        <Typography sx={{ mb: 1.5 }} color="text.secondary">
          {provinceOrState}, {locationCountry}
        </Typography>
        <Typography variant="body2">
          Administrado por: {airportOperatorName}
        </Typography>
      </CardContent>
    </Card>
  );
};

export default Airport;
