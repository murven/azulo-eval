import Joi from "joi";

const validator = (schema) => (payload) =>
  schema.validate(payload, { abortEarly: false });

const changeOperatorPayloadSchema = Joi.object({
  airportId: Joi.number().required(),
  newOperatorId: Joi.number().required(),
});

const validateChangeOperatorPayload = validator(changeOperatorPayloadSchema);

export { validateChangeOperatorPayload };
