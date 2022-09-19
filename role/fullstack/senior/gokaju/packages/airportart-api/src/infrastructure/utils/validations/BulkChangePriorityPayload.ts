import Joi from "joi";

const validator = (schema) => (payload) =>
  schema.validate(payload, { abortEarly: false });

const bulkChangePriorityPayloadSchema = Joi.object({
  airports: Joi.array()
    .min(1)
    .items(
      Joi.object({
        airportId: Joi.number().required(),
        newPriority: Joi.number().required(),
      })
    )
    .required(),
});

const validateBulkChangePriorityPayload = validator(
  bulkChangePriorityPayloadSchema
);

export { validateBulkChangePriorityPayload };
